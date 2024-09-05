libname hca202 "/home/u40800736/hca202/"; 
data frm; set hca202.frmgham; 

proc contents data=frm; run;
 
proc sql noprint; 
	create table work.filter0002 as select RANDID , HYPERTEN, SEX , TOTCHOL , AGE , SYSBP ,  
		DIABP , CURSMOKE , BMI , BPMEDS from HCA202.FRMGHAM; 
quit; 
 
title; 
libname hca202 "/home/u40800736/hca202/"; 
data frm; set work.filter0002; 
 
data frm; 
set work.filter0002; 
if sysbp >= 140 and diabp <= 90 then ish=1; 
else ish=0; 
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
 
else if totchol >= 240 then cholcategory = '3 - high'; 
if age >=30 and age < 40 then agegroup = '30s'; 
else if age >=40 and age <50 then agegroup = '40s'; 
else if age >=50 and age <60 then agegroup = '50s'; 
else if age>=60 and age<70 then agegroup = '60s'; 
else if age>=70 and age<80 then agegroup = '70s'; 
else if age>=80 and age<90 then agegroup = '80s'; 
label ish = 'Isolated Systolic Hypertension'; 
run; 
 
%let dat = frm; 
/*run these queries till here every time*/ 
 
proc plot data=&dat; 
plot hyperten*totchol; 
run; 
/*indicate that people with hypertension have higher total cholesterol*/ 
 
proc corr data=&dat plots(maxpoints=15000)=scatter; 
var hyperten totchol; 
run; 
/*correlation between hypertension and totchol INCLUDING PLOTS. pearson’s coefficients are only used for comparing two continuous variables; since hypertension is a dichotomous variable, this won’t work so proc freq is used to evaluate the relationship using Cramer’s V*/
 
proc freq data=&dat;
 tables hyperten*cholcategory / chisq;
run;
/*frequency data on categorical variables hypertension and cholcategory. cholcategory is used instead of totchol*/
 
 
proc univariate data=&dat plots; 
var hyperten totchol cursmoke ish age; 
run; 
/*indicates 10% of patients have a healthy level of totchol, 90% have unhealthy level of totchol*/ 
 
proc logistic data=&dat; 
class cholcategory (param = reference ref = '1 - healthy'); 
class cursmoke (param = reference ref = 'Smoker'); 
class agegroup (param = reference ref = '30s'); 
class ish (param = reference ref = 'No Isolated Systolic Hypertension'); 
model hyperten (event='Has Hypertension') = cholcategory cursmoke agegroup ish; 
run; 
/*best c statistic and p values for a multiple logistic regression model*/

