/* Adapted from "SAS Code.sas" (ihnguyen/cardiovascular).
   Original reads hca202.frmgham (Framingham Heart Study extract) via a local
   libname on the author's own machine. That data isn't in the repo, so this
   bundle ships a small synthetic sample with the same columns the author's
   proc sql pulls (RANDID HYPERTEN SEX TOTCHOL AGE SYSBP DIABP CURSMOKE BMI
   BPMEDS) and feeds it into the DATA step and every PROC exactly as written
   in the source script.

   One structural fix was required to make this compile: in the original,
   the CHOLCATEGORY assignment (lines 39-46 of SAS Code.sas) is an
   "else if ... ; if age ...' block floating in open code after a `run;`
   that already closed the preceding DATA step, and the leading `if totchol
   < 200` / `else if totchol < 240` legs implied by the README's own
   Table 1 (Healthy <200, Borderline 200-239, High >=240) are missing from
   the committed file. Below, the CHOLCATEGORY/AGEGROUP logic is folded
   back into the DATA step boundary and the two missing legs are restored
   using the exact thresholds from the author's README Table 1 -- the
   author's ISH logic, format labels, variable names, and downstream PROC
   logic are otherwise untouched. */

data frm;
	input RANDID HYPERTEN SEX TOTCHOL AGE SYSBP DIABP CURSMOKE BMI BPMEDS;
	datalines;
11001 1 1 268 61 148 88 0 27.8 1
11002 0 2 190 42 118 76 1 22.4 0
11003 1 1 245 57 152 92 1 29.1 0
11004 0 1 172 34 112 70 0 24.0 0
11005 1 2 301 68 160 84 0 31.6 1
11006 0 2 205 46 122 78 1 23.9 0
11007 1 1 288 72 144 68 0 28.3 1
11008 0 1 160 33 108 66 0 21.5 0
11009 1 2 250 63 150 96 1 30.2 0
11010 0 2 198 38 116 74 0 22.9 0
11011 1 1 312 76 156 82 0 33.0 1
11012 0 1 178 41 120 72 1 24.7 0
11013 1 2 226 55 146 90 0 27.0 0
11014 0 2 165 31 110 68 0 21.0 0
11015 1 1 296 66 158 86 1 29.9 1
11016 0 1 210 44 124 76 0 23.4 0
11017 1 2 240 59 149 94 0 28.6 0
11018 0 2 182 36 114 72 1 22.1 0
11019 1 1 275 70 154 80 0 30.5 1
11020 0 1 194 39 118 74 0 23.0 0
;
run;

data frm;
	set frm;
	if sysbp >= 140 and diabp <= 90 then ish=1;
	else ish=0;

	if totchol < 200 then cholcategory = '1 - healthy';
	else if totchol < 240 then cholcategory = '2 - borderline';
	else if totchol >= 240 then cholcategory = '3 - high';

	if age >=30 and age < 40 then agegroup = '30s';
	else if age >=40 and age <50 then agegroup = '40s';
	else if age >=50 and age <60 then agegroup = '50s';
	else if age>=60 and age<70 then agegroup = '60s';
	else if age>=70 and age<80 then agegroup = '70s';
	else if age>=80 and age<90 then agegroup = '80s';
	label ish = 'Isolated Systolic Hypertension';
run;

proc format;
	value ishF
	0 = 'No Isolated Systolic Hypertension'
	1 = 'Has Isolated Systolic Hypertension';
	value bpmedsF
	0 = 'No Medication'
	1 = 'Medication';
	value cursmokeF
	0 = 'Not Smoker'
	1 = 'Smoker';
	value sexF
	1 = 'Male'
	2 = 'Female';
	value hypertenF
	0 = 'No Hypertension'
	1 = 'Has Hypertension';
run;

%let dat = frm;
/*run these queries till here every time*/

proc corr data=&dat;
	var hyperten totchol;
run;
/*correlation between hypertension and totchol INCLUDING PLOTS. pearson's coefficients are only used for comparing two continuous variables; since hypertension is a dichotomous variable, this won't work so proc freq is used to evaluate the relationship using Cramer's V*/

proc freq data=&dat;
	tables hyperten*cholcategory / chisq;
run;
/*frequency data on categorical variables hypertension and cholcategory. cholcategory is used instead of totchol*/

proc univariate data=&dat;
	var hyperten totchol cursmoke ish age;
run;
/*indicates 10% of patients have a healthy level of totchol, 90% have unhealthy level of totchol*/

proc logistic data=&dat;
	class cholcategory (param = reference ref = '1 - healthy');
	class cursmoke (param = reference ref = '0');
	class agegroup (param = reference ref = '30s');
	class ish (param = reference ref = '0');
	model hyperten (event='1') = cholcategory cursmoke agegroup ish;
run;
/*best c statistic and p values for a multiple logistic regression model*/
