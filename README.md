# MechaCar_Statistical_Analysis

## Overview:

AutosRUs an automotive manufacturing company is suffering from production troubles from their newest prototype, the MechaCar.  The goal of this project is to review, develop a data analysis and have an insight for their newest prototype that may help manufacturing team to progress on their production. 

The data analysis needs to provide the following:

•	Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

•	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

•	Run t-tests to determine if the manufacturing lots are statistically different from the mean population

•	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

Tools:

Statistics and R programming


## Linear Regression to Predict MPG

### Deliverable 1: Linear Regression to Predict MPG

- The MechaCar_mpg.csv file is imported and read into a dataframe 

- An RScript is written for a linear regression model to be performed on all six variables
 
- An RScript is written to create the statistical summary of the linear regression model with the intended p-values 

![deliv_1-script.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/deliv_1-script.png)


#### Summary:


![deliv_1-lm-and-summary.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/deliv_1-lm-and-summary.png)


The output PR(>|t|), according to results vehicle_length, ground_clearance as well as intercept are statistically provided non-random amounts of variance to the linear model, which means vehicle_length, ground_clearance have a significant impact on miles per gallon(mpg). 

The p-Value is 5.35e-11 which is way smaller to assumed significance level that is .05 that is sufficient evidence to reject null hypothesis. The slope of the linear model is not zero.

The linear model predicts the mpg of the prototype MechaCar effectively since the R-squared value is 0.6825, which means 68% prediction. 


## Summary Statistics on Suspension Coils

### Deliverable 2: Summary Statistics on Suspension Coils

- The Suspension_Coil.csv file is imported and read into a dataframe 

- An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots 

- An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot 


![deliv_2-script.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/deliv_2-script.png)


#### Summary:

![deliv_2-total_summary_df.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/deliv_2-total_summary_df.png)

![delive_2-lot_summary_df.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/delive_2-lot_summary_df.png)


MechaCar suspension coils design specifications dictate allowable variance coils must not exceed 100 pounds PSI, as per generated total_summary_df, the variance is 62.29356 pounds PSI, which does not exceed to allowable PSI. However, if we check the lot_summary_df for each individual manufacturing lot, Lot 3 which has a variance of 170.2861224, is way above the allowable variance. Manufacturing Lot3 design needs to be reviewed to meet specification standard.


## T-Tests on Suspension Coils

### Deliverable 3: T-Test on Suspension Coils

- An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population 

- An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population 

![deliv_3-script.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/deliv_3-script.png)


#### Summary:


![deliv_3-t_test.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/deliv_3-t_test.png)

![deliv_3-t_test_lot1.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/deliv_3-t_test_lot1.png)

![deliv_3-t_test_lot2.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/deliv_3-t_test_lot2.png)

![deliv_3-t_test_lot3.png](https://github.com/OPahunang/MechaCar_Statistical_Analysis/blob/main/resources/deliv_3-t_test_lot3.png)


Across all manufacturing lots the p-value is 0.06028 which is around 6% that is above the 5% significance level that we failed to reject the null hypothesis. The sample mean across all manufacturing lots is statistically the same from the population mean of 1500 pounds PSI.

Lot 1 with p-value of 1 which is greater than .05, we failed to reject the null the hypothesis. Sample are the same from the population mean. 

Lot 2 with p-value of 0.6072 which is greater than .05, we failed to reject the null hypothesis. Sample are the same from the population mean. 

Lot 3 with p-value of 0.04168 which is less than .05, we reject the null hypothesis. Sample are different from the population mean. 


## Study Design: MechaCar vs Competition

### Deliverable 4: Design a Study Comparing the MechaCar to the Competition

To quantify how the MechaCar performs against the competition are the following metrics to consider: 

-	Price
-	Reliability
-	Safety and Features
-	Horse Power
-	Fuel Efficiency (mpg in city driving, mpg in highway driving)
-	Costs of Ownership (maintenance costs, insurance costs, type of gas) 
-	Resale Value

Null Hypothesis: MechaCar is reliable car compare to competition

Hypothesis: MechaCar is less reliable car compare to competition

A multiple linear regression with data of hours of testing or data from consumer report, or data independent car reviewers



