# MechaCar

## Project Overview 
Jeremy is approached by upper management to help with a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles. There are a number of issues surrounding the vehicle’s specifications and manufacturing process that are blocking the manufacturing team from proceeding. AutosRUs’ upper management has called on Jeremy and the data analytics team to help analyze the production data in order to justify some last-minute design decisions.

This module has taught me the following:

1. Getting Started with R 
2. Programming and ETL in R 
3. Visualize Your Data Using ggplot2 
4. Introduction to Statistical Tests
5. Introduction to Hypothesis Testing 
6. Perform an Analysis of Means in R 
7. Correlation and Regression in R 
8. Characterize Categorical Data 
9. Getting Real with A/B Testing 
10. Choose the Right Test for Your Data 

        
## Documents

- 01_DEMO folder : learning and practicing with R
- Challenge folder: Challenge documents and data files
          - MechaCar_mpg.csv : the data provided
          - MechaCarChallenge.R : The Rscript file of the statistical formulas/tests
          - MechaCarWriteUp.txt: The wirtten analysis
          - Suspension_Coil.csv : The data provided 


# Module 15 Challenge 

## Challenge overview

1. MPG Regression
2. Suspension Coil Summary
3. Suspension Coil T-test
4. Design your own study

.


## Summary 
***Please note the stat code can be found in the R Script file,  and the analysis belw can be found in text file

~MPG Regression~

To better predict mpg (dependent variable), we can add other variable such as vehicle length, vehicle weight, spoiler angle, ground clearance as independent variables to the multiple linear regression model. I took out AWD because it is a true/false 0,1 category, not a numerical one like the other variables.

In R, the multiple linear regression statement is as follows:
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance,data=MechaCar)

The multiple linear regression coefficients is as follows:
mpg = 6.24 vehicle length + .0012 vehicle weight + .008 spoiler angle + 3.66 ground clearance + -107.6.

-Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

In order to determine which variables/coefficients provided a non-random amount of variance to the mpg values,each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to the results, vehicle length, ground clearance, and intercept are variables that are statistically unlikely to provide random amounts of variance to the linear model.

-Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is not considered to be zero.

The p-value of the multiple linear regression analysis is 2.277 x 10-11, which is much smaller than the assumed significance level of 0.05%. Therefore, I can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of the linear model is not zero.

-Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

No, this linear model does not predicts mpg of MechaCar prototypes effectively because the r-squared value is 0.70, which means that roughly 70% of all mpg predictions will be correct when using this linear model, which is okay... not terrible. 

The intercept is statistically significant, which means there are other variables and factors that contribute to the variation in mpg.

~Suspension Coil Summary~

The summary statistics table for the suspension coil’s pounds-per-inch continuous variable is the following:

        MEAN: 1498.78	
        MEDIAN: 1500	
        VARIANCE: 62.29356	
        SD: 7.892627

-The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Does the current manufacturing data meet this design specification? Why or why not?

Yes, the current manufacturing data does meet this design specification. The calculated variance is 62.29356, which is smaller and does not exceed 100, which fits and meets the design specification.

~Suspension Coil T-Test~

I performed an one sample t-test on the different manufacturing lots. 

Manufacturing lot t-test:
Lot #1 : The p value is (.06) >.05, therefore this indicates weak evidence against the null hypothesis. The mean of Lot1 lies within the 95 percent confidence internal of 1497.507 and 1500.053. 

Lot #2: The p value is (.6) >.05, therefore this indicates weak evidence against the null hypothesis. The mean of Lot2 lies within the 95 percent confidence internal of 1499.423 and 1500.977.

Lot#3: The p value is (1) >.05, therefore this indicates weak evidence against the null hypothesis. The mean of Lot3 lies within the 95 percent confidence internal of 1499.719 and 1500.281.

Out of the lots, Lot 3 sample represents the whole data set more accurately beause it has the greatest p value. 

The t-test of the overall Suspension data is the following: 

t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
  
The results fail to reject the null hypothesis because the p-value is greater than .05, which means the sample mean lies within in the 95 percent confidence internal. 

~Design Your Own Study~

-Think critically about what metrics you would think would be of interest to a consumer (cost, fuel efficiency, color options, etc.).

safety rating, fuel efficiency, number of seats, longevity. 

For this design, I will focus on safety of the MechaCar compared to other cars in the market. Everyone wants to make sure their safety is ensured while driving.

-Determine what question we would ask, what the null and alternative hypothesis would be to answer that question, and what statistical test could be used to test this hypothesis.

Question- How much safer or dangerous is the MechaCar Prototype compared to other cars in the market?

null hypothesis - The MechaCar data shows that there is not a significant difference between the safeness compared to other cars in the market. If this is the case, P value would be greater than 0.05. 

alternate hypothesis - The MechaCar safety is not similar to the the whole population data. This does not necessarily mean it is safer. It could mean that it is showing either the MechaCar is more dangerous or safer than other cars in the market. If this is the case, the p value would be smaller than .05. 

The statistical test that could be used is a one sample t-test. You can compare the mean of the MechaCar sample and the mean of the whole population set. If the p value is greater than .05, then it indicates weak evidence against the null hypothesis, so you fail to reject the null hypothesis. This means the MechaCar does not significantly show that is it is safer compared to other cars. If the p value is smaller than .05, then it indicates strong evidence against the null hypothesis. This means the MechCar shows a significant difference in safety ratings compared to other cars. 

You can tell if the MechaCar is significantly more dangerous than other cars if the p value is smaller than .05 and the mean of x (fatalities and injuries) is greater than the mean of the whole dataset. 

If the MechaCar is significantly more safer compared to other cars, then the p value is greater than .05 and the mean of x (fatalities and injuries) is less then the mean of the whole dataset. 

-Knowing what test should be used, what data should be collected? 

The data that would be useful to test this hypothesis is the number of accidents around the same location, and fatalities/injuries for the MechaCar prototype, and other cars in the market. 

