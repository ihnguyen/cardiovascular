Predicting length of stay in beneficiaries using county-level profiling and multiple linear regression on Medicare claims data

Nguyen, Thuy-Nhi

UC Davis Continuing and Professional Education


Background
In the United States of America, there have been questions around the variability in healthcare.1 Many concerns revolve around cost differences based on the severity of illness.2 From 2008 to 2010, total hospital expenditures for Medicare beneficiaries has risen from $205 billion to $220 billion according to the Centers of Medicare and Medicaid Services (CMS) historical national health expenditure data. As hospital expenditures increase through time, the rising and alarming numbers has emanated healthcare providers and policy makers to search for ways to minimize the excessive costs. A typical approach to refine costs is by looking at the hospital’s resource utilization.
Average inpatient hospital prices per admission rose from $12,747 to $15,111 in three years.3 A common resource utilization parameter is length of stay. Length of stay is defined as the difference between the date of admission to the date of discharge. Although providers cannot determine how long a beneficiary stays at a hospital due many various reasons, they can be supported with county-level profiling. County-level profiling is a method to measure counties’ performance and report the information to the public. In other words, the method can provide evidence and accountability on how well hospitals are performing at a specific county. Studies have shown that a modest approach to county-level profiling has proven to reduce length of stay without negatively impacting healthcare provider’s behaviors.4 Necessary resources needed to be made available to proceed with county-level profiling are claims and administrative data. With the repurposing of accessible and inexpensive claims and administrative data, data mining techniques such as the CRISP-DM methodology and predictive analyses can be performed to gain valuable insights in healthcare.5 These data mining techniques could consider how to efficiently manage bed occupancy at inpatient hospitals by predicting how long a beneficiary occupies a bed space based on their demographics, chronic conditions, or comorbidities. It is a cost-effective solution to minimizing resource utilization, healthcare expenditures, and severity of a chronic condition.6 Findings suggest that obtaining estimates of a beneficiary’s length of stay can help healthcare providers better manage hospital beds more efficiently and effectively by freeing up space in admission scheduling and bed occupancy.7

This study focused on county-level profiling in Texas by predicting average length of stay in Medicare beneficiaries while risk adjusting for respiratory diseases using the CMS 2008 – 2010 deidentified synthetic public use file claims data. The claims data will be referred as DE-SynPUF for simplicity. Variables used to predict average length of stay were comorbidities and demographic traits which were found in the inpatient claims and beneficiary summary data sets. To calculate the average length of stay or observed rates of a county, all beneficiaries’ length of stay was averaged based on their county. Profiling the counties allowed characterization of a typical length of stay behavior and identification of length of stay deviations across the state and counties. Out of all the states, Texas was chosen because it is a densely populated and comprises of 234 counties. The large number of counties help provide more reliable models in the end. To profile the typical length of stay of beneficiaries who were admitted to an inpatient hospital, the observed average length of stay was computed and used to assess the expected values. A multiple linear regression model was constructed to predict the expected values. Since the outcome of interest was a continuous variable, a multiple linear regression model was suitable for analyses though the model has its limitations being known and prone to high variance and overfitting. The predicted values were used to determine the expected rate which was the calculated weight that was most likely to occur.8 Observed and expected rates established the county-level profiling ratings.

It was important to note that the counties were formatted as numeric. CMS did not specify the names or details of the counties in their codebook as it was not recommended that the DE-SynPUF was used for research purposes. This study was used for mainly for educational purposes. Additionally, the study was performed on SAS studio, a web application software where data files can be stored and accessed in libraries as well as manipulated using programs. The SAS studio programs followed a CRISP-DM framework which encompasses six steps: business understanding, data understanding, data preparation, modeling, evaluation, and deployment.9
As earlier stated, the business understanding phase determined the objective of the study which was county-level profiling and predicting average length of stay. The next phase, data understanding, addressed through descriptive statistics.  Following that, the data was prepared and transformed to a final data set by risk adjusting. Multiple linear regression modeling was initiated in the modeling phase to predict expected rates. Lastly, the models were evaluated and deployed through intervention recommendations.


Methods
Following the CRISP-DM methodology, the study process was divided in three components using SAS studio. At the data preparation stage, Medicare data was standardized by risk-adjustment methods and transformed using the Clinical Classification Software (CCS), a commercialized grouper software. Second, the observed rates or actual values were computed by defining the numerator as the number of beneficiaries who stayed in hospitals after being admitted for a respiratory disease and the denominator as the population at risk of a respiratory disease. Exclusion rules include claims data from outpatient, carrier, and prescription drug events. Lastly at the modeling stage, the expected rates or predicted values were computed by splitting the data into training and validation data sets, creating and running predictive models and statistical analyses, and scoring the data. The statistical analyses include comparing the observed and expected rates using O/E ratio with upper and lower 95% confidence intervals to determine the risk adjusted rate and how well a county performed, computing the root mean squared error and standard error to measure the distance and accuracy from the observed to the expected values. All executed SAS studio codes can be referred in Appendix A.

The characteristics of the study population was shown through descriptive statistics using univariate and means procedures. Since this study focused on counties in Texas using the beneficiary summary and inpatient claims data, the SAS procedures displayed a reduction in the number of entries from 687,502 to 39,393 which included multiple events or duplicates of the same beneficiaries. The number of unique records went from 232,747 to 13,321. The merged summary and inpatient data were filtered using the CCS multiple diagnosis grouper to adjusted for patients with risk of respiratory system diseases which further reduced the data from 39,393 to 10,275 entries. To combine beneficiaries with multiple events and duplicates into one record, the data was narrowed down to a cohort of 986 unique records.

Five out of 81 variables listed in the DE-SynPUF inpatient claims data include beneficiary code, inpatient admission date, claim utilization day count, inpatient discharged date, and claim diagnosis code 1. Since claim utilization day count was analogous to length of stay, the variable was used as a precursor to the outcome of interest, average length of stay. Eighteen of the 32 variables listed in the DE-SynPUF beneficiary summary data include beneficiary code, date of birth, date of death, sex, beneficiary race code, state code, county code, and chronic conditions indicators such as Alzheimer’s or related disorders or senile, congestive heart failure (CHF), chronic kidney disease, cancer, chronic obstructive pulmonary disease, depression, diabetes, ischemic heart disease, osteoporosis, rheumatoid arthritis and osteoarthritis (RA/OA), and stroke/transient ischemic attack. Merging the datasets was achieved through assigning the beneficiary code as the primary key. In addition, the chronic condition and demographic variables from the beneficiary summary data were assigned as predictors in the regression analyses.

Observed rates were computed by averaging all beneficiaries belonging to each county to compute an average county length of stay. To attain this, a table was created for each 234 counties. Each table was aggregated to display conveniently all the county’s averages and to later compute the state average for statistical analyses. Expected rates were determined from multiple linear regression modeling. A stepwise regression was performed as an automated method to add or delete variables in the model that either met statistical significance or not. After compiling the data to a cohort of 986 unique records, the data was checked for duplicates to confirm that no beneficiary had more than one record. After checking for duplicates, 50% of the samples went to a training data set and the other 50% of the samples went to a validation data set. Each data set held 493 samples each. The multiple linear regression model was performed on comorbidities and demographic traits using the regression procedure. The comorbidity model generated predicted values or expected rates of average length of stay for each county. Both the observed and expected rates were necessary to analyze the significance of the O/E ratio and difference. The O/E ratio was computed by dividing the observed rates over the expected rates.

Statistical analyses such as root mean squared error (RMSE), standard error (SE), and confidence intervals were performed manually by using the following four formulas:
(1)	RMSE = County Risk Adjusted Rate x (1 – County Risk Adjusted Rate)
(2)	SE = RMSE/√Denominator
(3)	Upper Confidence Interval = Risk Adjusted Rate + 1.96(√(Risk Adjusted Rate(1-Risk Adjusted Rate)/500))
(4)	Lower Confidence Interval = Risk Adjusted Rate – 1.96(√(Risk Adjusted Rate(1-Risk Adjusted Rate)/500))
The county risk adjusted rate was calculated by taking the O/E ratio and multiplying it by the state rate. The state rate was determined by averaging all the counties from the Texas county average table. The denominator was calculated by using the distinct count procedure.


Results
As part of the data preparation stage, descriptive statistics using univariate and means procedures were performed to compute the mean, median, mode, standard deviation, and range of the variables for the cohort at risk for respiratory diseases in Texas counties. Previously stated, the outcome of interest, average length of stay, for each beneficiary was derived from the claim utilization day count variable. The average length of stay variable had a mean of 6.16, median of 4.5, mode of 3.0, standard deviation of 6.42, and range of 77. The beneficiary race code had a mean of 1.48, median of 1, mode of 1, and range of 4. The beneficiary sex had a mean of 1.58, median of 2, mode of 2, standard deviation of 0.49, and range of 1. Congestive heart failure indicator had a mean of 1.08, median of 1, mode of 1, standard deviation of 0.27, and range of 1. Chronic obstructive pulmonary disease indicator had a mean of 1.19, median of 1, mode of 1, standard deviation of 0.39, and range of 1. Alzheimer’s indicator had a mean of 1.23, median of 1, mode of 1, standard deviation of 0.42, and range of 1. Chronic kidney disease indicator had a mean of 1.21, median of 1, mode of 1, standard deviation of 0.41, and range of 1. Cancer indicator had a mean of 1.7, median of 2, mode of 2, standard deviation of 0.46, and range of 1. Depression indicator had a mean of 1.22, median of 1, mode of 1, standard deviation of 0.42, and range of 1. Diabetes indicator had a mean of 1.07, median of 1, mode of 1, standard deviation of 0.25, and range of 1. Ischemic heart disease indicator had a mean of 1.04, median of 1, mode of 1, standard deviation of 0.21, and range of 1. Osteoporosis indicator had a mean of 1.37, median of 1, mode of 1, standard deviation of 0.48, and range of 1. Rheumatoid arthritis and osteoarthritis indicator had a mean of 1.43, median of 1, mode of 1, standard deviation of 0.49, and range of 1. Stroke/transient ischemic attack indicator had a mean of 1.7, median of 2, mode of 2, standard deviation of 0.46, and range of 1. Descriptive statistics were not performed for other provided variables in the study but were still important to discuss.

Although beneficiary and payer reimbursement and responsibility amounts were not predicting factors in the study, their descriptive statistics were notable to understand the financial aspects of the data. Using the SAS means and univariate procedures, the average inpatient annual Medicare reimbursement amount was $2,184.02. The lowest reimbursement amount a beneficiary gained was $990 whereas the highest amount a beneficiary owed was $167,840. The average inpatient annual beneficiary responsibility amount was $255.49. The responsibility amount ranged from zero dollars but up to $22,200. The average inpatient annual primary payer reimbursement amount was $103.14. The reimbursement amount ranged from zero dollars and up to $68,000. Other variables such as beneficiary birth date and death date were not included in this study due to complications in computing age with beneficiary birth dates and the large amount of missing data in death dates. DE-SynPUF only had 611 out of 39,393 death dates available. If multiple entries were considered, then the number of beneficiary death date entries would lower drastically. Death dates only accounted for less than 2% of the data which was later reduced based on the beneficiary’s county and chronic condition; therefore, the variable would have minimal contributing power.

After further examination of the data, it was important to note the variations between counties. The top counties with the largest frequencies were 610, 130, 910, and 390. The multiple linear regression model for comorbidities reported rheumatoid arthritis and osteoarthritis (p=0.03) and Alzheimer’s disease (p=0.08) as the only comorbidities that had potential of predicting the average length of stay in beneficiaries with respiratory related disease shown in Table 1. No other variable met statistical significance at the 0.15 p-value level. The results for the multiple linear regression model for demographic traits indicated no variable that met statistical significance at the 0.15 p-value level shown in Table 2. The same comorbidities model was run again at a later date and resulted in statistical significance in diabetes (p=0.002) and osteoporosis (p=0.08). The contradiction of second run with the first run begged the question of the reliability of the modeling technique. In contrast, when the demographic traits model was run a second time, the variables remained the same in terms of statistical significance.
 
Table 1: Multiple linear regression model on comorbidities: CHF, chronic kidney disease, cancer, depression, ischemic heart disease, osteoporosis, stroke/transient ischemic attack, RA/OA, and Alzheimer’s disease.
 
Table 2: Multiple linear regression model on demographic traits: beneficiary sex and race.
When comparing the expected length of stay rates with the observed length of stay rates, the frequency procedure was performed to determine the number of counties that had shorter or longer length of stay. The procedure displayed 46 out of 119 counties had longer length of stay than expected in Table 3a. Similarly, table 3b described the performance of the counties with longer length of stay than expected as worse than expected. There were no counties where the predicted values matched the expected length of stay; therefore, longer and shorter length of stay than would be expected were the only options available.
 
Table 3a: Frequency procedure on describing the number of counties with longer or shorter length of stay than expected.
 
Table 3b: Frequency procedure on describing the number of counties with better or worse than expected performance.
Table 4 described each county’s O/E ratio, risk adjusted rate, expected and observed rates, beneficiary count, root mean squared error, standard error, and upper and lower 95% confidence intervals. Of all the counties, county 70 had a beneficiary with the highest observed length of stay of 42 days. County 610 remained the county with the largest number of beneficiaries of 116. Counties 180 and 190 had no reported observed values thus SAS output resulted in a missing value symbol denoted by a period. Counties with the lowest length of stay of zero were 312, 583, and 822 with one beneficiary each. The observed and expected rate difference was calculated to determine the top counties with the largest difference. Of the 122 counties, county 70 again ranked highest with a difference of 35. Other counties that had large differences between observed and expected rates were 391, 591, 751, and 790.

Table 4: Profiling each county in Texas. Statistical analyses were performed for confidence and accuracy in results.


Discussion
Minimizing resource utilization by reducing length of stay is a typical method used across hospitals. Predicting length of stay is important to estimate how long a beneficiary could stay at an inpatient hospital in order to reduce future healthcare expenditures and costs. Optimizing a beneficiary’s length of stay can ensue huge benefits in cost savings and avoid unnecessary treatments. It is also important to emphasize that a beneficiary’s quality of care should not be compromised due to reducing length of stay or costs. In order to achieve this, county-level profiling was necessary to provide healthcare providers and policy makers the information on their counties’ length of stay performance. The aim of this study was to predict the average length of stay for each county and provide feedback on counties with their ratings.

Results from the study indicated that counties with longer length of stay could have improper or unnecessary resource utilization. In fact, 39% of the counties in the study had longer than expected length of stay. These poor ratings should be further investigated. County 70 with a beneficiary with a length of stay of 42 days was the most noticeable poor rating. Though it is likely that the length of stay was an outlier or possible fraud case, more information about this outlier is needed to improve the county’s performance. Future studies regarding super utilizers and fraud should consider these outliers as part of their analyses as it can affect the average length of stay of each county and overall state average rate. County-level profiling wasn’t made possible without the aid of descriptive statistics.

Descriptive statistics summarized the data in a few terms: mean, median, mode, standard deviation, and range. Mean, median, and mode gauged what the typical value of the data would be and standard deviation and range determined how well and long the data was distributed. The descriptive statistics on average length of stay reported different values for its mean, median, and mode which meant there was high variation in the data. Additionally, the high standard deviation of 6.42 days and a range of 77 days indicated the normal distribution of length of stay can be from zero days to 12 days but some cases or outliers went as far as 77 days. Table 4 showed counties 70, 391, 591, 751, and 790 with observed average length of stay deviating from the normal distribution which should be further investigated and could contribute to the county’s poor performance. Descriptive statistics on race and sex identified the data was mostly comprised of the white race and females. Descriptive statistics were also studied on the comorbidity predictor variables. Stroke and cancer had statistics of 2 which meant that the comorbidities weren’t indicated or present in majority of the data meanwhile the rest of the independent variables were present. Subsequent to descriptive statistics, modeling was performed.

The multiple linear regression model inferred that the comorbidity variables, RA/OA and Alzheimer’s, had statistical significance meaning that there was at least 90% confidence that these variables can predict average length of stay. After further examination, multiple linear regression was used due its simplicity and applicability to other datasets. For this reason, other modeling techniques should be considered in future studies. The multiple linear regression model executed differently each time the model ran. Some cases showed more or less variables with statistical significance and differing comorbidity outcomes. As a result, multiple linear regression modeling was not considered reliable in this study due to the differences in outcomes; therefore, future studies should consider other modeling methods before any interventions implementations. To confirm the reliability of the models, statistical analyses were calculated.

O/E ratio, risk adjusted rates, confidence intervals, standard error, root mean square error, and observed and expected rate differences were manually calculated to assess each counties’ performance. Comparing the counties observed and expected rates were done by the O/E ratio. All counties had an O/E ratio close to zero which indicated a desirable outcome. But it was important to note that most of the data had low beneficiary count numbers so may contributed to the low O/E ratio.  Next, O/E ratio was used to determine the risk adjusted rate. The purpose of the risk adjusted rates was to compare counties’ performance fairly based on a related disease. Risk adjusted rates were significant to producing reliable county-level profiles. Each county was risk adjusted to respiratory related diseases so they could be compared justly. Next, the upper and lower 95% confidence intervals were calculated to determine the confidence in the results. Using their risk adjusted rate, 32 counties were within their specified confidence intervals while the other 90 counties were not. Only 26% of the data were confidently supported by statistics which indicated the other 74% were not. Standard error stipulated the accuracy of the sample distribution relative to the sample population. In fact, counties 590 and 221 had values close to 1 which meant that they had wider spread in sample distribution compared to their counterparts. To measure error of the predictive nature of the data, root mean square error between 0.2 and 0.5 indicated good and accurate model prediction. Counties 582, 844, 420, 170, and 220 were the only counties that fit within the range thus having accurate model prediction power. Less than 5% of the counties had a good RMSE value which suggested that the multiple linear regression modeling technique may not be suitable at predicting average length of stay. The differences in observed and expected values also suggested the predictive power of the models. County 70 had a difference of 35 days. Recognizing county 70 could have a potential outlier, the observed and expected rate difference confirmed the discrepancy.

The significance of statistical analyses was to measure the likelihood of associations by either chance or a result of the outcome of interest. They quantify the predictions so decision makers can decide on what quality and financial improvements should be made in their county. Although the financial aspect of the data wasn’t studied thoroughly due to the complexity of continuous predictors in modeling, it is mentionable for future studies as valuable insights on cost containment methods can be recognized.
Other difficulties besides the modeling approach surfaced in the process of the study. As previously stated, birth and death dates could not be used as predictors in this study due to complications with computing age and the lack of data. There were only 611 out of 39,393 death date entries in the DE-SynPUF. Less than 2% of the data had death dates meanwhile the other 98% were missing; therefore, implications on older age population and county comparisons on mortality could not be reasonably analyzed. There couldn’t be any evidence to show which counties had sicker patients due to missing data. Limitations in the data should be recognized before implementing interventions.

Counties could increase their ratings and lower their expenditures through evidence-based interventions. An intervention administered by a Canadian hospital achieved successful results through implementing a role into the healthcare system, patient navigator.10 The study described patient navigators as “dedicated patient-care facilitators.” In other words, these navigators act as a liaison for the patient, their families, and medical staff. The study showed improvement in communication and patient experience from implementation. Results indicated a return on investment outweighing the cost of having the patient navigator through the increase in patient satisfaction, decrease in length of stay, and lower than expected costs. Other related interventions suggested developing multidisciplinary team care, improving discharge planning, implementing early supported discharge programs and clinical care pathways.11 These interventions could be established as part of the patient navigator’s role. More specifically, a patient navigator could be in charge of improving early discharge planning and coordinating with healthcare providers and patients to promote better structural processes. In order to successfully implement these interventions, county-level profiling should be coupled with process improvement initiatives.12


Conclusion
	All in all, hospital expenditures continue to rise as time passes. It is necessary to take action based on these alarming numbers through county-level profiling and predictive modeling. County-level profiling could enhance hospital’s performances that they may have never knew existed until shown to them through data mining. Predictive modeling could help hospitals that want to better manage their resource utilization to reduce present and future expenditures. Although this study didn’t produce reliable models as expected, it did deliver on recognizing the counties with the highest variability in terms of the outcome of interest. These insights could inform decision makers on possible interventions poorly rated counties may need. Data mining provides evidence and suggestions to decision makers that the healthcare system is flawed due to its variability and rising expenditures but county-level profiling and predictive analyses techniques can supplement as actions to the road of improvement.
 
References
1.	Goldfield, N., Gnani, S., Majeed, A. Profiling performance in primary care in the United States. BMJ. 2003 Apr; 326(7392):744-747.
2.	Thomas, J. W. Should Episode-Based Economic Profiles Be Risk Adjusted to Account for Differences in Patients’ Health Risks? Health Serv Res. 2006 Apr; 41(2): 581-598.
3.	Lemieux, J., Mulligan, T. Trends in Inpatient Hospital Prices, 2008 to 2010. The American Journal of Managed Care. 2013 Mar; 19: n3.
4.	Zemencuk, J. K., Hofer, T.P., Hayward, R. A. et al. What effect does physician “profiling” have on inpatient physician satisfaction and hospital length of stay? BMC Health Serv. 2006; 6: 45.
5.	Caetano, N., Cortez, P. Laureano, R. Using Data Mining for Prediction of Hospital Length of Stay: An Application of the CRISP-DM Methodology. Enterprise Information System. 2015; 227: 149-166.
6.	Hachesu, P. R., Ahmadi, M., Somayyeh, A., Sadoughi, F. Use of Data Mining Techniques to Determine and Predict Length of Stay of Cardiac Patients. Healthc Inform Res. 2013 Jun; 19(2): 121-129.
7.	Rinne, S. T., Graves, M. C., Bastian, L. A., Lindenauer, P. K., Wong, E. S. Hebert, P. L., Liu, C. Association Between Length of Stay and Readmission for COPD. Am J Manag Care. 2017 Aug; 23(8): e253-e258.
8.	Provost, F., Fawcett, T. Data Science for Business: What You Need to Know About Data Mining and Data-Analytic Thinking. Sebastopol, CA. O’Reilly Media. 2013.
9.	Niaksu, O. CRISP Data Mining Methodology Extension for Medical Domain. Baltic J. Modern Computing. 2015; 3(2):92-109.
10.	Kwan, J. L., Morgan, M. W., Stewart, T. E., Bell, C. M. Impact of an Inpatient PN Program. J. Hosp. Med. 2015; 12:799-803.
11.	Miani, C., Ball, S., Pitchforth, E., et al. Organisational interventions to reduce length of stay in hospital: a rapid evidence assessment. Southampton (UK): NIHR Journals Library; 2014 Dec; 2(52).
12.	Evans, J. H., Hwang, Y., Nagarajan, N. Physicians’ Response to Length-of-Stay Profiling. Medical Care. 1995 Nov; 33(11): 1106-1119.
 
Appendix A
SAS Studio Code
/*SET UP LIBRARY*/
Libname CMS "/courses/dd667415ba27fe300/MEDICARE_DESYNPUF" access=readonly ;

/*STEP ONE: Standardize input per risk-adjustment requirements. Transform input data if using commercial grouper software (CCS)*/
/*---------------------------BENEFICIARY SUMMARY FOR TX COUNTIES-------------------------------*/
/*HAS [1ST MODEL] DISEASE CLASSIFICATIONS PREDICTORS AND [2ND MODEL] GENDER & RACE PREDICTORS*/
/*HAS COUNTY [MANY ###] AND STATE [45] FOR PROFILING*/
/*CREATING TABLE FOR TX ENTRIES INCLUDING DUPLICATES OR MULTIPLE EVENTS*/
PROC SQL;
CREATE TABLE STATE_COUNTY3 AS
SELECT *
FROM CMS.BENE_09_10
WHERE SP_STATE_CODE="45"
ORDER BY BENE_COUNTY_CD;
QUIT;
/*TOTAL ENTRIES = 39,393 and 32 columns/variables*/

/*COUNT NUMBER OF RECORDS IN DESYNPUF INCLUDING DUPLICATES OR MULTIPLE EVENTS*/
proc sql;
select count(desynpuf_id)
from cms.bene_09_10;
quit;
/*TOTAL ENTRIES = 687,502 */


/*COUNT NUMBER OF UNIQUE RECORDS IN DESYNPUF*/
proc sql;
select count(distinct desynpuf_id)
from cms.bene_09_10;
quit;
/*TOTAL RECORDS = 232,747 */

/*COUNT NUMBER OF UNIQUE RECORDS IN TEXAS ONLY*/
PROC SQL;
SELECT count(distinct desynpuf_id)
FROM CMS.BENE_09_10
WHERE SP_STATE_CODE="45"
ORDER BY BENE_COUNTY_CD;
QUIT;
/*TOTAL RECORDS = 13,321*/


/*LOOK AT DATA AND SEE THE FREQUENCIES, VARIABLES, AND WHICH VARIABLES NEED TO BE CONVERTED FROM CHAR TO NUMERIC DATA FORMAT*/
PROC FREQ DATA=STATE_COUNTY3; TABLE BENE_COUNTY_CD; RUN; /*COUNTIES WITH LARGEST FREQUENCIES: 610, 390, 910, 130*/
proc contents data=state_county3;run;
proc contents data=state_county3 position short;run; 
proc means data=state_county3 n mean max min range std;
   title 'Beneficiary Summary in Texas ';
run;
proc univariate data=state_county3; run;
/*VARIABLES LIST:
BENE_BIRTH_DT BENE_COUNTY_CD BENE_DEATH_DT BENE_ESRD_IND BENE_HI_CVRAGE_TOT_MONS
BENE_HMO_CVRAGE_TOT_MONS BENE_RACE_CD BENE_SEX_IDENT_CD BENE_SMI_CVRAGE_TOT_MONS
BENRES_CAR BENRES_IP BENRES_OP DESYNPUF_ID MEDREIMB_CAR MEDREIMB_IP MEDREIMB_OP
PLAN_CVRG_MOS_NUM PPPYMT_CAR PPPYMT_IP PPPYMT_OP SP_ALZHDMTA SP_CHF SP_CHRNKIDN
SP_CNCR SP_COPD SP_DEPRESSN SP_DIABETES SP_ISCHMCHT SP_OSTEOPRS SP_RA_OA
SP_STATE_CODE SP_STRKETIA*/

/*SWITCHING RACE TO CHAR TO NUMERIC  ---- PURPOSE IS TO USE IN REGRESSION MODEL*/
data null (drop=race);
set state_county3 (rename=(bene_race_cd=race));
format bene_race_cd 6.;
bene_race_cd=input(race,6.);
run;

/*SWITCHING GENDER TO CHAR TO NUMERIC  ---- PURPOSE IS TO USE IN REGRESSION MODEL*/
data null1 (drop=sex);
set state_county3 (rename=(BENE_SEX_IDENT_CD=sex));
format BENE_SEX_IDENT_CD 6.;
BENE_SEX_IDENT_CD=input(sex,6.);
run;

/*COMBINE NEW NUMERIC VARIABLES (RACE AND GENDER) INTO ONE TABLE WITH THE OTHER VARIABLES*/
proc sql;
create table state_county4 as
select  A.DESYNPUF_ID, A.BENE_BIRTH_DT, A.BENE_COUNTY_CD, A.BENE_DEATH_DT, A.BENE_ESRD_IND,
A.BENE_HI_CVRAGE_TOT_MONS, A.BENE_HMO_CVRAGE_TOT_MONS, A.BENE_RACE_CD, B.BENE_SEX_IDENT_CD,
A.BENE_SMI_CVRAGE_TOT_MONS, A.BENRES_CAR, A.BENRES_IP, A.BENRES_OP, A.MEDREIMB_CAR, A.MEDREIMB_IP,
A.MEDREIMB_OP, A.PLAN_CVRG_MOS_NUM, A.PPPYMT_CAR, A.PPPYMT_IP, A.PPPYMT_OP, A.SP_ALZHDMTA, A.SP_CHF, A.SP_CHRNKIDN,
A.SP_CNCR, A.SP_COPD, A.SP_DEPRESSN, A.SP_DIABETES, A.SP_ISCHMCHT, A.SP_OSTEOPRS, A.SP_RA_OA, A.SP_STATE_CODE, A.SP_STRKETIA
from null as a
RIGHT Join null1 as b
on a.desynpuf_id = b.desynpuf_id;
quit;

/*VERIFY THAT RACE AND GENDER ARE CONVERTED TO NUMERIC FORMAT*/
proc contents data=state_county4;run;
/*CONFIRMED VERIFICATION*/

/*SORT DATA BY ID*/
PROC SORT DATA= STATE_COUNTY4;
BY DESCENDING DESYNPUF_ID; RUN;



/*-------------------------INPATIENT DATASET THAT HAS ICD9 DX AND LENGTH OF STAY-------------------------*/
/*SET UP CCS GROUPER LIBRARY*/
LIBNAME GRP "/courses/dd667415ba27fe300/GROUPERS" access=readonly ;

/*MERGE INPATIENT, CCS DX GROUPER, AND BENEFICIARY SUMMARY DATASETS INTO ONE MASTER DATASET*/
PROC SQL;
CREATE TABLE ST_COUNTY AS
SELECT A.DESYNPUF_ID, A.BENE_SEX_IDENT_CD, A.BENE_RACE_CD, A.BENE_COUNTY_CD, A.SP_STATE_CODE,
A.SP_ALZHDMTA, A.SP_CHF, A.SP_CHRNKIDN, A.SP_CNCR, A.SP_COPD, A.SP_DEPRESSN, A.SP_DIABETES,
A.SP_ISCHMCHT, A.SP_OSTEOPRS, A.SP_RA_OA, A.SP_STRKETIA,
B.CLM_UTLZTN_DAY_CNT,
C.L1L
FROM STATE_COUNTY4 AS A
LEFT JOIN CMS.INPATIENT AS B
ON A.DESYNPUF_ID = B.DESYNPUF_ID
LEFT JOIN GRP.CCS_MULTI_DX AS C
ON B.ICD9_DGNS_CD_1 = C.START
GROUP BY SP_STATE_CODE;
quit;

/*FILTER THE MASTER DATASET BASED ON PATIENTS WITH ONLY A RESPIRATORY SYSTEM RELATED DISEASE*/
proc sql;
create table st_county1 as
select * from st_county
WHERE L1L = 'Diseases of the respiratory system';
quit;
/*DATASET REDUCED TO 10,275 ENTRIES*/

/*CHECK FOR DUPLICATES*/
PROC SQL;
SELECT desynpuf_id, COUNT(*) AS CNT_REC
FROM st_county1
GROUP BY 1
HAVING CNT_REC > 1;
QUIT;
/*Many of them have 9 or more records*/

/*COUNT THE DENOMINATOR*/
/*total number of people per county OR
all medicare beneficiaries (regardless of status) admitted to the same inpatient county
over the course of 2008 to 2011
OR specific population with diagnoses that indicate a particular condition
which is the population of medicare beneficiaries with a respiratory system disease
= denominator*/
proc sql;
select count(distinct desynpuf_id)
from st_county1;
quit;
/*986*/

/*METHOD OF COMBINING MULTIPLE RECORDS INTO ONE ROW */
/*USED MIN FOR CHRONIC CONDITIONS BECAUSE WANT TO FIND OUT IF PATIENT WAS EVER A "YES" FOR CONDITION*/
/*USED AVG FOR CLM_UTLZTN_DAY_CNT TO CALCULATE THE AVERAGE LENGTH OF STAY FOR EACH PATIENT*/
proc sql;
create table test2 as
select DESYNPUF_id, MAX(SP_STATE_CODE) AS SP_STATE_CODE, BENE_COUNTY_CD, AVG(CLM_UTLZTN_DAY_CNT) as ALOS, MIN(BENE_RACE_CD) AS BENE_RACE_CD,
MIN(BENE_SEX_IDENT_CD) AS BENE_SEX_IDENT_CD, MIN(SP_CHF) AS CHF, MIN(SP_COPD) AS COPD,
MIN(SP_ALZHDMTA) AS ALZHEIMERS, MIN(SP_CHRNKIDN) AS KIDNEY, MIN(SP_CNCR) AS CANCER, MIN(SP_DEPRESSN) AS DEPRESSION,
MIN(SP_DIABETES) AS DIABETES, MIN(SP_ISCHMCHT) AS ISCHEMIC, MIN(SP_OSTEOPRS) AS OSTEO, MIN(SP_RA_OA) AS RA_OA, MIN(SP_STRKETIA) AS STROKE
from ST_COUNTY1
group by DESYNPUF_id, BENE_COUNTY_CD;
quit;
/*CONFIRMED WITH DENOMINATOR, TOTAL RECORDS = 986*/



/*LOOK AT DATA*/
proc contents data=test2; run;
proc freq data=test2; run;
proc univariate data=test2; run;
proc means data=test2; run;
/*COUNTIES WITH LARGEST FREQUENCIES: 610,130,910,390*/



/*CHECK FOR DUPLICATES AGAIN*/
PROC SQL;
SELECT desynpuf_id, COUNT(*) AS CNT_REC
FROM test2
GROUP BY 1
HAVING CNT_REC > 1;
QUIT;
/* NOTE: No rows were selected. Test2 has no duplicates! which is good!*/

/*----------------------------------STEP TWO: CALCULATE OBSERVED RATES-----------------------------------------*/
/*IMPORTANT!! RUN "CALCULATE OBSERVED RATES FOR TEXAS" FIRST; LOCATED IN LAST SECTION*/
/*LOOK AT OBSERVED RATES BASED ON COUNTY IN TX_COUNTY_AVG DATASET*/
proc freq data=tx_county_avg; table bene_county_cd;run;

/*----------------------------------STEP THREE: CALCULATE EXPECTED RATES--------------------------------------*/
/*SET UP TRAINING AND VALIDATION DATASETS*/
PROC SURVEYSELECT DATA= test2 OUT= LOS_TRAIN METHOD=srs SAMPRATE=0.5;
RUN;
PROC SURVEYSELECT DATA= test2 OUT= LOS_VALIDATE METHOD=srs SAMPRATE=0.5;
RUN;
/*DATASETS HAVE 493 SAMPLES EACH*/

/*RUN MULTIPLE LINEAR REGRESSION MODEL FOR COMORBIDITIES*/
PROC REG DATA=los_train outest=score1;
Yhat: MODEL ALOS = CHF ALZHEIMERS KIDNEY CANCER DEPRESSION
DIABETES ISCHEMIC OSTEO RA_OA STROKE /selection=stepwise DETAILS=ALL;
title ’REGRESSION ON COMORBIDITIES’;
run;
/*MODEL 1: ALZHEIMERS AND RA/OA ARE THE ONLY COMORBIDITIES THAT CAN PREDICT LENGTH OF STAY IN PATIENTS W/RESPIRATORY RELATED ISSUES; NOTE THAT OUTCOMES CHANGE EACH TIME MODEL WAS RAN*/

/*RUN MULTIPLE LINEAR REGRESSION MODEL FOR DEMOGRAPHICS*/
PROC REG DATA=los_train outest=score3;
Yhat: MODEL ALOS = BENE_SEX_IDENT_CD BENE_RACE_CD /selection=stepwise DETAILS=ALL;
title ’REGRESSION ON DEMOGRAPHICS’;
run;
/*NEITHER GENDER OR RACE CAN PREDICT LENGTH OF STAY*/

/*SCORING THE DATASET*/
PROC SCORE DATA=los_validate score=score1 type=parms out=score2;
var CHF ALZHEIMERS KIDNEY CANCER DEPRESSION
DIABETES ISCHEMIC OSTEO RA_OA STROKE;
run;
/*YHAT IS THE PREDICTED VALUES*/

/*SORT DATA BY PREDICTED VALUES*/
PROC SORT DATA= SCORE2;
BY DESCENDING YHAT; RUN;

/*LOOK AT DATA*/
PROC PRINT DATA=SCORE2;
VAR BENE_COUNTY_CD YHAT;
TITLE2 'PREDICTED SCORES FOR REGRESSION';
RUN;
/*PREDICTED VALUES RANGE FROM 6 TO 5*/

/*RUN THIS TO MERGE OBSERVED(ACTUAL) DATASET WITH THE EXPECTED(PREDICTED) DATASET*/
PROC SQL;
CREATE TABLE COMPARE AS
SELECT A.BENE_COUNTY_CD, A.YHAT, B.AVERAGE_LOS
FROM SCORE2 AS A
LEFT JOIN TX_COUNTY_AVG AS B
ON A.BENE_COUNTY_CD = B.BENE_COUNTY_CD;
QUIT;

/*
RISK ADJUSTED ALOS RATE = STATE OBSERVED ALOS RATE X (NO. OF OBSERVED RATES/EXPECTED)
OBSERVED RATES = AVERAGE_LOS
EXPECTED RATES = YHAT
*/
/*COMBINE MULTIPLE RECORDS/ROWS INTO ONE AND RENAME YHAT TO EXPECTED AND AVERAGE_LOS TO OBSERVED*/
proc sql;
create table compare2 as
select max(BENE_COUNTY_CD) as COUNTY, avg(YHAT) as EXPECTED,
MAX(average_los) AS OBSERVED
from compare
group by bene_county_cd;
quit;

/*CALCULATE OBSERVED:EXPECTED (O/E) RATIO*/
PROC SQL;
CREATE TABLE COMPARE3 AS
SELECT COUNTY, EXPECTED, OBSERVED/EXPECTED AS OE_RATIO
FROM COMPARE2;
QUIT;

/*STRATIFY BASED ON LONGER OR SHORTER THAN EXPECTED LENGTH OF STAY*/
DATA STAY;
SET COMPARE3;
IF OE_RATIO > 1 THEN STAY = 'LONGER LENGTH OF STAY THAN WOULD BE EXPECTED';
ELSE IF OE_RATIO < 1 THEN STAY = 'SHORTER LENGTH OF STAY THAN WOULD BE EXPECTED';
ELSE IF OE_RATIO = 1 THEN STAY = 'EXPECTED LENGTH OF STAY';
RUN;

/* COUNT NUMBER OF PATIENTS IN YOUR BINS */
PROC FREQ DATA=STAY;
TABLE STAY;
RUN;
/*LONGER LOS HAS 40, SHORTER LOS HAS 79*/

/*CALCULATE STATE RATE FOR NEXT STEP*/
proc sql;
create table STATE_RATE as
select MAX(SP_STATE_CODE) AS STATE, AVG(average_los) as STATE_OB_RATE
FROM TX_COUNTY_AVG;
QUIT;
/*6.1965112263*/

/*CALCULATE RISK ADJUSTED RATE BY USING STATE RATE AND OE_RATIO*/
PROC SQL;
CREATE TABLE RISK AS
SELECT *, OE_RATIO*6.1965112263 AS RISK_ADJ_RATE
FROM COMPARE3;
QUIT;

/*RATE THE COUNTY*/
DATA COMPARISON;
SET RISK;
IF RISK_ADJ_RATE < 6.1965112263 THEN COUNTY_RATING = 'BETTER THAN EXPECTED';
ELSE IF RISK_ADJ_RATE > 6.1965112263 THEN COUNTY_RATING = 'WORSE THAN EXPECTED';
RUN;

/*LOOK AT COUNTY RATINGS AND COMPARE*/
PROC FREQ DATA=COMPARISON; TABLE COUNTY_RATING;
RUN;
/*LONGER LENGTH OF STAY MEANS WORSE PERFORMING COUNTY MEANWHILE SHORTER LENGTH OF STAY MEANS BETTER PERFORMING COUNTY*/


/*----------------------MANUALLY CALCULATING RMSE AND STANDARD ERROR------------------------*/
/*DEFINITION:

RMSE (ROOT MEAN SQUARED ERROR) = COUNTY RISK ADJUSTED RATE X (1-COUNTY RISK ADJUSTED RATE)
or in our case, rmse = risk_adj_rate x (1-risk_adj_rate)


STANDARD ERROR = RMSE/SQ ROOT(DENOMINATOR)
or in our case, se = rmse/sqrt(986)

*/

/*CALCULATE RMSE FIRST*/
proc sql;
create table st_err as
select *, risk_adj_rate**(1-risk_adj_rate) as rmse
from risk;
quit;

/*MERGE TABLES INTO ONE*/
proc sql;
create table st_err1 as
select *
from st_err as a
left join tx_county_avg as b
on a.county = b.bene_county_cd;
quit;

/*CALCULATE STANDARD ERROR*/
/*standard error is statistics on how good your data is; the precision of the data*/
proc sql;
create table st_err2 as
select *, rmse/(sqrt(bene_count)) as standard_error
from st_err1;
quit;

/*LOOK AT DATA*/
proc contents data=st_err2 position short;run;

/*COMBINE RECORDS/ROWS INTO ONE*/
proc sql;
create table st_err3 as
select max(COUNTY) as county, max(OE_RATIO) as oe_ratio, max(RISK_ADJ_RATE) as risk_adj_rate,
max(SP_STATE_CODE) as sp_state_code, MAX(EXPECTED) AS EXPECTED, max(average_los) as OBSERVED, max(bene_count) as bene_count,
max(rmse) as rmse, max(standard_error) as standard_error
from st_err2
group by county;
quit;

/*SORT AND LOOK AT DATA BASED ON STANDARD ERROR*/
PROC SORT DATA= st_err3;
BY DESCENDING standard_error; RUN;
proc print data=st_err3; run;
proc freq data=st_err3; table county standard_error; run;

/*CALCULATE UPPER AND LOWER CONFIDENCE INTERVALS*/
PROC SQL;
CREATE TABLE CI3 AS
SELECT *, RISK_ADJ_RATE-1.96**(SQRT((RISK_ADJ_RATE**(1-RISK_ADJ_RATE)/500))) AS LOWER_CI,
RISK_ADJ_RATE+1.96**(SQRT((RISK_ADJ_RATE**(1-RISK_ADJ_RATE)/500))) AS UPPER_CI
FROM ST_ERR3;
QUIT;

/*LOOK AT DATA*/
PROC PRINT DATA=CI3;RUN;

/*DETERMINE WHICH COUNTIES HAVE LONGER LENGTH OF STAY COMPARED TO STATE AVERAGE*/
PROC SQL;
SELECT *, COUNT(*) FROM CI3
WHERE RISK_ADJ_RATE > 6.1965112263;
QUIT;
/*TOTAL OF 53*/

/*CREATE A LIST OF COUNTIES THAT WERE CORRECTLY PREDICTED*/
PROC SQL;
SELECT COUNTY, COUNT(COUNTY)
FROM CI3
WHERE EXPECTED BETWEEN LOWER_CI AND UPPER_CI;
QUIT;
/*38 OUT OF 122 OF PREDICTED VALUES WERE WITHIN THE 95% CONFIDENCE INTERVAL*/

/*CALCULATE THE DIFFERENCE BETWEEN OBSERVED AND EXPECTED RATES DESCENDING ORDER*/
proc sql;
select *, observed-expected as OE_Difference
from ci3
order by oe_difference desc;
quit;

/*--------------------------CALCULATE OBSERVED RATES FOR TEXAS-----------------------------------*/
proc sql;
create table C1 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
where SP_state_code = '45' and bene_county_cd = '000';
quit; 
proc sql;
create table c2 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='010';
QUIT;
proc sql;
create table c3 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='020';
QUIT;
proc sql;
create table c4 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='030';
QUIT;
proc sql;
create table c5 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='040';
QUIT;
proc sql;
create table c6 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='050';
QUIT;
proc sql;
create table c7 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='060';
QUIT;
proc sql;
create table c8 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='070';
QUIT;
proc sql;
create table c9 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='080';
QUIT;
proc sql;
create table c10 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='090';
QUIT;
proc sql;
create table c11 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='100';
QUIT;
proc sql;
create table c12 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='110';
QUIT;
proc sql;
create table c13 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='113';
QUIT;
proc sql;
create table c14 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='120';
QUIT;
proc sql;
create table c15 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='130';
QUIT;
proc sql;
create table c16 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='140';
QUIT;
proc sql;
create table c17 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='160';
QUIT;
proc sql;
create table c18 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='170';
QUIT;
proc sql;
create table c19 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='200';
QUIT;
proc sql;
create table c20 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='210';
QUIT;
proc sql;
create table c21 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='220';
QUIT;
proc sql;
create table c22 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='221';
QUIT;
proc sql;
create table c23 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='222';
QUIT;
proc sql;
create table c24 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='223';
QUIT;
proc sql;
create table c25 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='224';
QUIT;
proc sql;
create table c26 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='230';
QUIT;
proc sql;
create table c27 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='240';
QUIT;
proc sql;
create table c28 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='250';
QUIT;
proc sql;
create table c29 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='251';
QUIT;
proc sql;
create table c30 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='260';
QUIT;
proc sql;
create table c31 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='270';
QUIT;
proc sql;
create table c32 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='280';
QUIT;
proc sql;
create table c33 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='281';
QUIT;
proc sql;
create table c34 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='291';
QUIT;
proc sql;
create table c35 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='292';
QUIT;
proc sql;
create table c36 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='300';
QUIT;
proc sql;
create table c37 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='301';
QUIT;
proc sql;
create table c38 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='310';
QUIT;
proc sql;
create table c39 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='311';
QUIT;
proc sql;
create table c40 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='312';
QUIT;
proc sql;
create table c41 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='320';
QUIT;
proc sql;
create table c42 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='321';
QUIT;
proc sql;
create table c43 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='330';
QUIT;
proc sql;
create table c44 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='340';
QUIT;
proc sql;
create table c45 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='341';
QUIT;
proc sql;
create table c46 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='350';
QUIT;
proc sql;
create table c47 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='360';
QUIT;
proc sql;
create table c48 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='361';
QUIT;
proc sql;
create table c49 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='362';
QUIT;
proc sql;
create table c50 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='370';
QUIT;
proc sql;
create table c51 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='380';
QUIT;
proc sql;
create table c52 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='390';
QUIT;
proc sql;
create table c53 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='391';
QUIT;
proc sql;
create table c54 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='392';
QUIT;
proc sql;
create table c55 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='400';
QUIT;
proc sql;
create table c56 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='410';
QUIT;
proc sql;
create table c57 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='420';
QUIT;
proc sql;
create table c58 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='421';
QUIT;
proc sql;
create table c59 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='430';
QUIT;
proc sql;
create table c60 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='431';
QUIT;
proc sql;
create table c61 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='440';
QUIT;proc sql;
create table c62 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='450';
QUIT;proc sql;
create table c63 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='451';
QUIT;proc sql;
create table c64 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='460';
QUIT;proc sql;
create table c65 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='470';
QUIT;proc sql;
create table c66 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='480';
QUIT;proc sql;
create table c67 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='490';
QUIT;proc sql;
create table c68 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='500';
QUIT;proc sql;
create table c69 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='510';
QUIT;proc sql;
create table c70 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='511';
QUIT;proc sql;
create table c71 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='520';
QUIT;proc sql;
create table c72 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='521';
QUIT;proc sql;
create table c73 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='530';
QUIT;proc sql;
create table c74 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='531';
QUIT;proc sql;
create table c75 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='540';
QUIT;proc sql;
create table c76 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='541';
QUIT;proc sql;
create table c77 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='542';
QUIT;proc sql;
create table c78 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='550';
QUIT;proc sql;
create table c79 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='551';
QUIT;proc sql;
create table c80 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='552';
QUIT;proc sql;
create table c81 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='561';
QUIT;proc sql;
create table c82 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='562';
QUIT;proc sql;
create table c83 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='563';
QUIT;proc sql;
create table c84 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='564';
QUIT;proc sql;
create table c85 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='570';
QUIT;proc sql;
create table c86 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='580';
QUIT;proc sql;
create table c87 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='581';
QUIT;proc sql;
create table c88 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='582';
QUIT;proc sql;
create table c89 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='583';
QUIT;proc sql;
create table c90 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='590';
QUIT;proc sql;
create table c91 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='591';
QUIT;proc sql;
create table c92 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='592';
QUIT;proc sql;
create table c93 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='600';
QUIT;proc sql;
create table c94 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='610';
QUIT;proc sql;
create table c95 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='620';
QUIT;proc sql;
create table c96 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='621';
QUIT;proc sql;
create table c97 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='631';
QUIT;proc sql;
create table c98 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='632';
QUIT;proc sql;
create table c99 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='640';
QUIT;proc sql;
create table c100 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='650';
QUIT;proc sql;
create table c101 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='651';
QUIT;proc sql;
create table c102 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='652';
QUIT;proc sql;
create table c103 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='653';
QUIT;proc sql;
create table c104 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='654';
QUIT;proc sql;
create table c105 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='660';
QUIT;proc sql;
create table c106 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='661';
QUIT;proc sql;
create table c107 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='662';
QUIT;proc sql;
create table c108 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='670';
QUIT;proc sql;
create table c109 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='671';
QUIT;proc sql;
create table c110 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='672';
QUIT;proc sql;
create table c111 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='680';
QUIT;proc sql;
create table c112 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='681';
QUIT;proc sql;
create table c113 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='690';
QUIT;proc sql;
create table c114 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='700';
QUIT;proc sql;
create table c115 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='710';
QUIT;proc sql;
create table c116 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='711';
QUIT;proc sql;
create table c117 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='720';
QUIT;proc sql;
create table c118 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='722';
QUIT;proc sql;
create table c119 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='730';
QUIT;proc sql;
create table c120 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='731';
QUIT;proc sql;
create table c121 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='734';
QUIT;proc sql;
create table c122 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='740';
QUIT;proc sql;
create table c123 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='742';
QUIT;proc sql;
create table c124 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='743';
QUIT;proc sql;
create table c125 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='744';
QUIT;proc sql;
create table c126 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='750';
QUIT;proc sql;
create table c127 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='751';
QUIT;proc sql;
create table c128 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='752';
QUIT;proc sql;
create table c129 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='753';
QUIT;proc sql;
create table c130 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='754';
QUIT;proc sql;
create table c131 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='755';
QUIT;proc sql;
create table c132 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='756';
QUIT;proc sql;
create table c133 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='757';
QUIT;proc sql;
create table c134 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='758';
QUIT;proc sql;
create table c135 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='759';
QUIT;proc sql;
create table c136 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='760';
QUIT;proc sql;
create table c137 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='761';
QUIT;proc sql;
create table c138 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='770';
QUIT;proc sql;
create table c139 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='771';
QUIT;proc sql;
create table c140 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='772';
QUIT;proc sql;
create table c141 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='780';
QUIT;proc sql;
create table c142 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='781';
QUIT;proc sql;
create table c143 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='782';
QUIT;proc sql;
create table c144 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='783';
QUIT;proc sql;
create table c145 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='784';
QUIT;proc sql;
create table c146 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='785';
QUIT;proc sql;
create table c147 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='790';
QUIT;proc sql;
create table c148 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='791';
QUIT;proc sql;
create table c149 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='792';
QUIT;proc sql;
create table c150 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='793';
QUIT;proc sql;
create table c151 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='794';
QUIT;proc sql;
create table c152 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='795';
QUIT;proc sql;
create table c153 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='796';
QUIT;proc sql;
create table c154 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='797';
QUIT;
proc sql;
create table c155 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='800';
QUIT;proc sql;
create table c156 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='801';
QUIT;proc sql;
create table c157 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='802';
QUIT;proc sql;
create table c158 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='803';
QUIT;proc sql;
create table c159 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='804';
QUIT;proc sql;
create table c160 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='810';
QUIT;proc sql;
create table c161 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='820';
QUIT;proc sql;
create table c162 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='821';
QUIT;proc sql;
create table c163 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='822';
QUIT;proc sql;
create table c164 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='830';
QUIT;proc sql;
create table c165 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='831';
QUIT;proc sql;
create table c166 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='832';
QUIT;proc sql;
create table c167 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='840';
QUIT;proc sql;
create table c168 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='841';
QUIT;proc sql;
create table c169 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='842';
QUIT;proc sql;
create table c170 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='843';
QUIT;proc sql;
create table c171 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='844';
QUIT;proc sql;
create table c172 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='845';
QUIT;proc sql;
create table c173 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='850';
QUIT;proc sql;
create table c174 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='860';
QUIT;proc sql;
create table c175 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='861';
QUIT;proc sql;
create table c176 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='870';
QUIT;proc sql;
create table c177 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='871';
QUIT;proc sql;
create table c178 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='872';
QUIT;proc sql;
create table c179 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='873';
QUIT;proc sql;
create table c180 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='874';
QUIT;proc sql;
create table c181 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='875';
QUIT;proc sql;
create table c182 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='876';
QUIT;proc sql;
create table c183 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='878';
QUIT;proc sql;
create table c184 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='879';
QUIT;proc sql;
create table c185 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='880';
QUIT;proc sql;
create table c186 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='881';
QUIT;proc sql;
create table c187 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='882';
QUIT;proc sql;
create table c188 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='883';
QUIT;proc sql;
create table c189 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='884';
QUIT;proc sql;
create table c190 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='885';
QUIT;proc sql;
create table c191 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='886';
QUIT;proc sql;
create table c192 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='887';
QUIT;proc sql;
create table c193 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='888';
QUIT;proc sql;
create table c194 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='890';
QUIT;proc sql;
create table c195 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='891';
QUIT;proc sql;
create table c196 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='892';
QUIT;
proc sql;
create table c197 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='893';
QUIT;proc sql;
create table c198 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='900';
QUIT;proc sql;
create table c199 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='901';
QUIT;proc sql;
create table c200 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='904';
QUIT;proc sql;
create table c201 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='905';
QUIT;proc sql;
create table c202 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='910';
QUIT;proc sql;
create table c203 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='911';
QUIT;proc sql;
create table c204 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='913';
QUIT;proc sql;
create table c205 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='921';
QUIT;proc sql;
create table c206 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='930';
QUIT;proc sql;
create table c207 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='940';
QUIT;proc sql;
create table c208 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='941';
QUIT;proc sql;
create table c209 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='942';
QUIT;proc sql;
create table c210 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='943';
QUIT;proc sql;
create table c211 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='944';
QUIT;proc sql;
create table c212 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='945';
QUIT;proc sql;
create table c213 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='946';
QUIT;proc sql;
create table c214 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='947';
QUIT;proc sql;
create table c215 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='948';
QUIT;proc sql;
create table c216 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='949';
QUIT;proc sql;
create table c217 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='950';
QUIT;proc sql;
create table c218 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='951';
QUIT;proc sql;
create table c219 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='952';
QUIT;proc sql;
create table c220 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='953';
QUIT;proc sql;
create table c221 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='954';
QUIT;proc sql;
create table c222 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='955';
QUIT;proc sql;
create table c223 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='960';
QUIT;proc sql;
create table c224 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='961';
QUIT;proc sql;
create table c225 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='962';
QUIT;proc sql;
create table c226 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='970';
QUIT;proc sql;
create table c227 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='971';
QUIT;proc sql;
create table c228 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='972';
QUIT;proc sql;
create table c229 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='973';
QUIT;proc sql;
create table c230 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='974';
QUIT;proc sql;
create table c231 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='980';
QUIT;proc sql;
create table c232 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='981';
QUIT;proc sql;
create table c233 as
select SP_STATE_CODE, BENE_COUNTY_CD,count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='982';
QUIT;proc sql;
create table c234 as
select SP_STATE_CODE, BENE_COUNTY_CD, count(desynpuf_id) as bene_count, avg(alos) as average_los
from test2
WHERE SP_STATE_CODE='45' AND BENE_COUNTY_CD ='983';
QUIT;
/*COMBINE ALL COUNTIES IN ONE TABLE*/
DATA TX_COUNTY_AVG;
SET C1 C2 C3 C4 C5 C6 C7 C8 C9
C10 C11 C12 C13 C14 C15 C16 C17 C18 C19
C20 C21 C22 C23 C24 C25 C26 C27 C28 C29
C30 C31 C32 C33 C34 C35 C36 C37 C38 C39
C40 C41 C42 C43 C44 C45 C46 C47 C48 C49
C50 C51 C52 C53 C54 C55 C56 C57 C58 C59
C60 C61 C62 C63 C64 C65 C66 C67 C68 C69
C70 C71 C72 C73 C74 C75 C76 C77 C78 C79
C80 C81 C82 C83 C84 C85 C86 C87 C88 C89
C90 C91 C92 C93 C94 C95 C96 C97 C98 C99
C100 C101 C102 C103 C104 C105 C106 C107 C108 C109
C110 C111 C112 C113 C114 C115 C116 C117 C118 C119
C120 C121 C122 C123 C124 C125 C126 C127 C128 C129
C130 C131 C132 C133 C134 C135 C136 C137 C138 C139
C140 C141 C142 C143 C144 C145 C146 C147 C148 C149
C150 C151 C152 C153 C154 C155 C156 C157 C158 C159
C160 C161 C162 C163 C164 C165 C166 C167 C168 C169
C170 C171 C172 C173 C174 C175 C176 C177 C178 C179
C180 C181 C182 C183 C184 C185 C186 C187 C188 C189
C190 C191 C192 C193 C194 C195 C196 C197 C198 C199
C200 C201 C202 C203 C204 C205 C206 C207 C208 C209
C210 C211 C212 C213 C214 C215 C216 C217 C218 C219
C220 C221 C222 C223 C224 C225 C226 C227 C228 C229
C230 C231 C232 C233 C234; RUN;
/*------------------------------ END OF CALCULATING OBSERVED RATES FOR TEXAS----------------------------------------*/
