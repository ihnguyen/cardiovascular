# Does high levels of cholesterol increase your odds of having hypertension?

### By Thuy-Nhi Nguyen


## Introduction

According to the cdc.gov data statistics on heart disease, “heart disease is the leading cause of death for both men and women.”1 Risk factors for heart disease include high blood pressure, high cholesterol, and smoking.1 Studies have shown that high levels of cholesterol increases the risk of heart disease. Other studies have shown that having high blood pressure or hypertension also increases the risk of heart disease. Not many studies mentioned if there is a causal relationship between high cholesterol and hypertension. This retrospective research study aims to improve healthcare processes by identifying if high cholesterol increases the odds of having hypertension.

The data was obtained from Framingham Heart Study electronic health record data where the primary research consisted of over 10,000 female and male participants ranging from ages 30-80 years old for an epidemiological study to provide information on cardiovascular disease and its risk factors.2 A nested case-control study design was employed in this research due to limited resources but nonetheless assisted in hypothesis generation, predictors and confounders identification, and focus on one outcome. This study design approach allowed the cases and the controls to be more comparable therefore representative of the population. The research questions to be answered were “Does high levels of cholesterol increase odds of having hypertension? Are they correlated? Are they associated? What is the effect of high levels of cholesterol on the odds of having hypertension after controlling for current smoking status, age, and isolated systolic hypertension?” To discover the importance of cholesterol in the presence or absence of hypertension, exposure and outcome associations were evaluated.


## Background

The primary model was conducted using a multiple logistic regression analysis to determine the odds of the outcome given exposure. According to cdc.gov, the purpose of a multiple logistic regression was to “isolate the relationship between the exposure variable and the outcome variable from the effects of one or more other variables (called the covariates or confounders).”3 The model enabled the exploration of associations between hypertension and the predictor variables from the odds ratio values. The research focused primarily on the relationship between the predictor variable total cholesterol on the outcome variable hypertension. Requirements for the multiple logistic regression model were a dichotomous outcome variable and continuous or discrete predictor variables. The following equation 1 depicted the relationship between hypertension and the predictors for this study:
	
(1) hypertension = cholesterol + age + isolated systolic hypertension + current smoking status


 Prior to this research, predictors such as sex, body mass index, and anti-hypertensive medications were analyzed using the multiple logistic regression model and found to be unstable therefore were not included in the research. Predictors that were deemed stable confounders were current cigarette smoking status (CURSMOKE), age (AGE), and isolated systolic hypertension (ISH). The relationship between hypertension (HYPERTEN) and total cholesterol (TOTCHOL) were assessed with stable confounders. To determine what is considered high cholesterol, the total cholesterol guidelines from the National Heart, Lung, and Blood Institute were followed as shown in Table 1.4 Webmd.com guidelines were followed to create the confounding variable isolated systolic hypertension shown in Table 2.5
 
| Status  | Range (in mg/dL) |
| ------------- | ------------- |
| Healthy  | <200  |
| Borderline High  | 200 - 239  |
| High  | >240  |

*Table 1: Cholesterol categories from NHLB Institute guidelines.*



| Blood Pressure Type  | Range (in mm Hg) |
| ------------- | ------------- |
| Systolic Blood Pressure  | > 140  |
| Diastolic Blood Pressure  | < 90  |
	
*Table 2: Isolated Systolic Hypertension ranges according to WebMD guidelines.*


## Method

The library was set to a filename “HCA202” with a copy of the Framingham Heart Study for analysis manipulation. In Figure 1, proc contents was performed to determine the number of observations and variables in the dataset. The data was subsetted to contain only relevant data by filtering the dataset with proc sql. In order to include appropriate variables, a standardized approach involving backward elimination was used to begin the modelling process. This approach considered all 38 variables and excluded the variables that were not relevant to the research question. The process evaluated the effect of each variable on the estimate of interest and reduced the dataset to 10 variables with the same 11627 observations.
 
Figure 1: Contents on observations and variables displayed from Framingham Heart Study dataset.
The filtered output was saved in the HCA202 as work.filter0002. Isolated systolic hypertension (ISH), age group (AGEGROUP), and cholesterol categories (CHOLCATEGORY) were generated as new variables. Numeric values zero and one were reassigned to string values. An example is the number zero was replaced by “No Isolated Systolic Hypertension” and the number one was replaced by “Has Isolated Systolic Hypertension” which assisted in classifying and describing numeric values for SAS analysis. A macro variable was placed to text substitute work.filter0002 dataset to dat. To explore the dataset, SAS procedures used were proc plot, proc corr, proc freq, proc univariate, and proc logistic. Proc logistic estimated the odds ratio by following equation 2.
(2) odds ratio = (odd of disease among exposed)/(odd of disease among unexposed)
 In Figure 2, the proc plot indicated the relationship between hypertension and serum cholesterol. Borderline high and high total cholesterol were values equal to and above 200 mg/dL.
 
Figure 2: Graphical plot between hypertension and total cholesterol.
 
To identify the correlation between hypertension and cholesterol in the Framingham Heart Study, proc corr was utilized in Figure 3.
 
Figure 3: Correlation results between hypertension and total cholesterol.
 
To determine the relationship and the frequency of hypertension and total cholesterol, proc freq was displayed in Figure 4. Total cholesterol was converted to an ordinal variable cholcategory to have an easier analysis in groups of cholesterol rather than each individual value of cholesterol. Proc freq was applicable because the variables are discrete.
 
Figure 4: Frequency of hypertension and each cholesterol category, healthy, borderline high, and high cholesterol results.
 
To understand the distribution of the covariates in the filtered Framingham dataset, proc univariate was used in Figures 5 to assess the normality and discover of outliers. Figures 5a – 5e displayed the distribution of the Framingham Heart Study patients by their incident hypertension, serum cholesterol, current smoking status, isolated systolic hypertension status, and age.


![5d_1](https://user-images.githubusercontent.com/73903035/142740887-315bf351-c6fe-4449-a87f-6ee035869044.png)
![5d_2](https://user-images.githubusercontent.com/73903035/142740889-c8cfdf72-d89a-4747-9500-6ae89c922149.png)
![5e_1](https://user-images.githubusercontent.com/73903035/142740890-8aaaebe8-26a3-4eb9-8e6c-1175267331c7.png)
![5e_2](https://user-images.githubusercontent.com/73903035/142740892-504d3816-de8d-4855-b7cf-e1a4a0e37240.png)
![6_1](https://user-images.githubusercontent.com/73903035/142740893-d8a03b08-8e68-4a20-afe4-258e3fcc74f5.png)
![6_2](https://user-images.githubusercontent.com/73903035/142740894-312a8b17-f8ee-4604-9b44-0968adc68780.png)
![6_3](https://user-images.githubusercontent.com/73903035/142740896-b1d20c15-4eee-460f-993f-e4bfe54b7762.png)
![6_4](https://user-images.githubusercontent.com/73903035/142740897-84093ac7-e7d6-4827-962f-d55e104fa69a.png)
![6_5](https://user-images.githubusercontent.com/73903035/142740898-e7f96782-4318-4dca-a90e-38dd847fbce2.png)
![6_6](https://user-images.githubusercontent.com/73903035/142740899-9adc4bb3-16a2-428f-89aa-b1df55a01ef0.png)
![6_7](https://user-images.githubusercontent.com/73903035/142740900-ad2d755c-4d78-4812-b706-a35c9eca607f.png)





| First Header  | Second Header |
| ------------- | ------------- |
| ![5c_1](https://user-images.githubusercontent.com/73903035/142740909-d3cad03f-3607-4cfc-aed0-5bf65b5f328f.png)  | ![5c_2](https://user-images.githubusercontent.com/73903035/142740911-ce5acc18-4c67-4d9f-8400-43b45b153c6d.png)  |



Figure 5a: Distribution results of incident hypertension in the Framingham Heart Study dataset.


| Figure 5b: Distribution results of serum cholesterol in the Framingham Heart Study dataset. |
| ------------- | ------------- |
| ![5b_1](https://user-images.githubusercontent.com/73903035/142740901-488d9914-f66e-478b-b127-2ddc5d810bf7.png) | ![5b_2](https://user-images.githubusercontent.com/73903035/142740902-edca87fc-51c2-4bef-84ab-b053cca32fd2.png) |
| ![5b_3](https://user-images.githubusercontent.com/73903035/142740905-61413af3-3318-4474-b0f7-7006142ce183.png) | ![5b_4](https://user-images.githubusercontent.com/73903035/142740908-a85713b2-1025-4054-9e0c-5d3b9108457b.png) |

  
Figure 5c: Distribution results of current cigarette smoker or not current cigarette smoker in the Framingham Heart Study dataset.
  
Figure 5d: Distribution results of Isolated Systolic Hypertension in the Framingham Heart Study dataset.

Figure 5e: Distribution results of age in the Framingham Heart Study dataset.

Note: 124 observations were deleted due to missing values for the response and explanatory variables.
 
Figure 6: Multiple Logistic Regression Model taking consideration of covariates current cigarette smoker, age group, isolated systolic hypertension, and cholesterol category to predict a value for hypertension on the average patient. 

## Results

In Figure 2, the plot procedure represented many observations through a plot by showing more than half of the patients had abnormal total cholesterol levels with little less than 9,500 patient observations hidden and little over 400 observations missing. The graph concluded that patients with hypertension had higher total cholesterol than patients without hypertension and the data was not normally distributed.
Shown in Figure 3, the correlation procedure estimated the average patient has high cholesterol levels. The Pearson Correlation Coefficients was not analyzed due to hypertension not being a continuous variable. Another procedure (proc freq) was performed to determine if hypertension and total cholesterol were correlated. Incident hypertension and total cholesterol with p-values less than alpha 0.05 suggested statistical significance in their correlation.
According to Figure 4, the frequency procedure determined that most of the patients had high levels of cholesterol regardless of having or not having hypertension. A Cramer’s V value of 0.09 and degrees of freedom of 2 revealed a small to medium association assuming the guidelines to Cramer’s V of 0.07 was considered small effect and 0.21 was considered medium effect. The table of hypertension by cholesterol category stated 40.15% of patients with high levels of cholesterol did not have hypertension whereas 50.46% of patients with high levels had hypertension. It suggested that most of the patients participating in the study already had high levels of cholesterol therefore could lead to biases in the conclusion.

In Figure 5a, the univariate procedure displayed descriptive statistics that hypertension had a mean value of 0.74, median value of 1, and mode of 1. Figure 5b demonstrated total cholesterol had a mean value of 241.16, median value of 238, and mode of 240. Current smoking status in Figure 5c showed a mean value of 0.43, median of 0. and mode of 0. In Figure 5d, isolated systolic hypertension had a mean value of 0.19, median of 0, and mode of 0. Age had a mean value of 54.79, median of 54, and mode of 52 depicted in Figure 5e.
Figures 5a – 5e had p-values of less than alpha 0.05 indicative of statistical significance. Figure 5a pointed out that there were four times more patients with hypertension than patients without hypertension. The distribution in hypertensive patients could influence results due to unevenly representing the population. Figure 5b displayed the total cholesterol ranges from 107 to 696 mg/dL similarly to the output from Figure 3. Since the extreme observations were similar indicated by the extreme observations table, the data were not considered outliers and were accepted in the research. The high standard deviation of 45 was admissible based on the previous observation. The distribution plot exhibited a normal distribution. Figure 5c revealed there were 1500 more observations of non-smokers presented in the data than there were smokers. This could also skew results due to uneven distribution. Figure 5d presented data that there were four times more patients without isolated systolic hypertension than there were with isolated systolic hypertension. Figure 5e disclosed that age was normally distributed indicative of the bell-shaped curve.
The logistic procedure evaluated the effects of cholesterol, smoking status, age, and isolated systolic hypertension on hypertension in Figure 6. For every one unit change in a patient with borderline high levels of cholesterol, the log odds of hypertension increases by 0.16 whereas for every one unit change in a patient with high levels of cholesterol, the log odds of hypertension increases by 0.42. A non-smoking patient versus smoking had a log odds of hypertension increase by 0.33.  A patient in their 40s had a 0.21-unit increase log odds of hypertension but a patient in their 50s had a greater log odds of hypertension by a 0.45-unit increase. In comparison, patients in their 60s had a 0.76-unit increase log odds of hypertension. Lastly, a patient in their 70s had the greatest log odds of hypertension with a 0.87-unit increase. The 80s age group could not be evaluated due to its high p-value.
The odds ratio estimate table in Figure 6 calculated that a patient with borderline high levels of cholesterol was 17% more likely to have hypertension than a patient with healthy levels of cholesterol. If a patient had high levels of cholesterol, they were 52% more likely to have hypertension than a patient with healthy levels of cholesterol. If a patient was a non-smoker, they were 39% more likely to have hypertension than a smoker. If a patient was in their 40s, they were 24% more likely to have hypertension. If a patient was in their 50s, they were 57% more likely to have hypertension. If a patient was in their 60s, they were 2.1x more likely to have hypertension. If a patient was in their 70s, they were 2.4% more likely to have hypertension.


## Discussion

The plot in Figure 2 didn’t provide much information because most of the data was missing or hidden although the data determined that a multiple logistic regression was an appropriate model. The model had the best c-statistic of 0.70 and p-values less than alpha 0.05 which indicated the model predicted what was observed well. Low p-values determined that the estimates were statistically significant. Both factors were important attributes to obtain the best model. Though the other models had relevant confounders such as body mass index, anti-hypertensives, and sex and a better fitted model statistics, they had low c-statistics and high p-values which made the models unstable. Thereby the confounders were limited to isolated systolic hypertension, age, and current smoker status due to stable p-values in respect of the relationship between hypertension and total cholesterol.
Isolated systolic hypertension was included in the study because studies have shown it was common type of hypertension amongst older adults.6 Due to the limitation of the Framingham Heart Study dataset, the age range wasn’t widely distributed to consider populations over 80 years old contributing to the low p-value to the age group. Isolated systolic hypertension couldn’t be assessed effectively due to inadequate information in the dataset but could be resolved by increasing the sample size in the 80+ age groups for future studies.
The most surprising result shown from the analysis was that non-smokers had greater odds of having hypertension than patients that smoke. Contrary to popular belief, smoking is a type of cardiovascular risk factor. The conclusions cannot be applied to the general population because the applied inclusion and exclusion criteria was already prematurely executed for primary research reasons.


## Conclusion

Heart disease has many risk factors which were evaluated in this research. All the predictors showed an increase resulting in the increase of the odds of having hypertension. The only exception was smoking which the statistics stated otherwise. Since many studies identified smoking as a cardiovascular risk factor, conclusions on the statistics on current smoking status were rejected. Assessing model statistics requires careful consideration of expert and content specific knowledge because statistics cannot be heavily relied on due to the assumptions made prior to the research.
Though the focal point of the analysis was to estimate the predictors on hypertension, statistics does not determine conclusions to the research questions. Nevertheless, high levels of cholesterol did increase the odds of having hypertension as well as have a correlation of  0.1 meaning as cholesterol increases, then the odds of hypertension increases too. Hypertension and cholesterol were also found to have a low to medium association according to Cramer’s V. The overall effect of high levels of cholesterol on the odds of hypertension after controlling current smoking status, age, and isolated systolic hypertension increase the odds of having hypertension from 17% to 52%. Research concludes that having high levels of cholesterol could increase the odds of hypertension but there is inadequate information to confirm this would apply to the general population due to design bias. Clearly, hypertension and cholesterol are classified as cardiovascular risk factors and should both be carefully monitored to achieve a healthy heart lifestyle.

 
## References

1) Centers for Disease Control and Prevention. Heart Disease Death Rates, 2014-2016 Adults, Ages 35+, by County. Heart Disease Fact Sheet. Published on 2017 Aug 23. Retrieved 2019 November 30 from https://www.cdc.gov/dhdsp/data_statistics/fact_sheets/fs_heart_disease.htm
2) Mahmood, S. S., Levy, D., Vasan, R. S., and Wang, T. J. The Framingham Heart Study and the Epidemiology of Cardiovascular Diseases: A Historical Perspective. Lancet. 2014 Mar 15; 383(9921):999-1008. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4159698/
3) Centers for Disease Control and Prevention. NHANES Dietary Web Tutorial: Examine the Relationship Between Supplement use and a Categorical Outcome Using a Chi-Square Test. Retrieved 2019 Nov 30 from https://www.cdc.gov/nchs/tutorials/dietary/Advanced/EstimatePrevalence/Info3.htm
4) Story, C. and Weatherspoon, D. What’s the Connection Between High Blood Cholesterol and Hypertension? Healthline Media. Published 2017 April 17. Retrieved 2019 November 30 from https://www.healthline.com/health/high-cholesterol/treating-with-statins/hypertension#3
5) Beckerman, J. Isolated Systolic Hypertension: Causes of High Systolic Blood Pressure. WebMD. Published on 2019 May 17. Retrieved 2019 November 30 from https://www.webmd.com/hypertension-high-blood-pressure/isolated-systolic-hypertension#1
6) Bavishi, C., Goel, S., and Messerli, F. H. Isolated Systolic Hypertension: An Update After SPRINT. The American Journal of Medicine. Elsevier Inc. 2016; 129, 1251-1258. Retrieve 2019 December 2 from https://www.amjmed.com/article/S0002-9343(16)30919-6/pdf

 
