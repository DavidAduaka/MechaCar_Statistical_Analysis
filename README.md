# MechaCar_Statistical_Analysis by David Aduaka 

## Overview of MechaCar Statistical Analysis
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has asked for a review of the production data for insights that may help the manufacturing team. I am tasked with the following;

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a      summary interpretation of the findings.
  
## Resources 
R Studio, tidyverse, ggplot2, MechaCar MPG dataset, Suspension Coil dataset

## Linear Regression to Predict MPG
Using multiple linear regression, I created a linear model that compares the MPG to various various to determine if there were non-random relationships. This is the formula and the resulting table.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))

![image](https://user-images.githubusercontent.com/70069730/153781925-08990d5b-775e-423e-9ef5-a8182163f00a.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? To determine the variables that provided a non-random amount of variance to the mpg values in the dataset, we look at the Pr(>|t|) column and see what is less that 0.05. In this case, ground clearance and vehicle length (along with the intercept), provided non-random amounts of variance to the linear model. In other words, they have a significant impact on MPG.
- Is the slope of the linear model considered to be zero? Why or why not? The p-value of this linear model is 5.35e-11, which is less than the significance level of 0.05. Therefore we reject the null hypothesis, which states that the slope of the model is zero. Thus the slope is not zero.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? To determine how effectively the model predicts MPG, we refer to the Multiple R-squared value of 0.7149. This means that the model predicts mpg correctly 71.49% of the time. This may or may not be effective based on the company's standards. However, I would consider this effective in predicting MPG.

## Summary Statistics on Suspension Coils
The next deliverable required creating summary statistics of Suspension Coil PSI data from multiple production lots. Using the group_by() and summarize() functions, I created a total summary table and a lot summary table showing the various statistics.

### Total Summary 
![image](https://user-images.githubusercontent.com/70069730/153782148-d61dd9bc-03d2-4e85-9e66-0d214da9ae6e.png)

### Lot Summary 
![image](https://user-images.githubusercontent.com/70069730/153782176-c5c69fc8-1f96-4c97-87d1-d38ce33c8d86.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

We look at the Variance column for each table. In total, the variance is 62.29, which is below the threshold.

However, for each lot individually, Lots 1 and 2 fall below the threshold, but Lot 3 exceeds it at 170.29.

## T-Tests on Suspension Coils
I then perfomed a t-test of the total summary and the lot summary to determine if there was a statistical difference between the data sets and a standard population. The population mean for this data was 1,500.

### Total Summary T-Test
![image](https://user-images.githubusercontent.com/70069730/153782229-2bc1de08-0d5b-4101-9a37-5bcf8968c305.png)

The table shows that the p-value is 0.06, which means we cannot reject the null hypothesis. Therefore the data for the total summary is statistically similar to a normal distribution.

### Lot Summary T-Tests
![image](https://user-images.githubusercontent.com/70069730/153782274-e7e9e152-d780-4b6e-bf58-48250d29d683.png)

1. Lot 1 has a p-value of 1, which means we can't reject the null hypothesis.
2. Lot 2 has a p-value of 0.61, which means we can't reject the null hypothesis.
3. Lot 3 has a p-value of 0.04. We reject the null hypothesis, and accept that there is a statistical difference with this particular lot.

## Study Design: MechaCar vs Competition
Finally, I was asked to create a theoretical statistical study that can quantify how the MechaCar performs against the competition. I will consider the following metrics (fuel efficiency and cost), and determine the null and alternative hypotheses, statistical test, and data needed.

Fuel Efficiency

1. What is the null hypothesis or alternative hypothesis? The null hypothesis would be MechaCar's prototypes' fuel efficiency is similar to that of competitors' vehicles. The alternative hypothesis is that there is a statistical difference between MechaCar's fuel efficiency and its competitors.
2. What statistical test would you use to test the hypothesis? And why? I will use an ANOVA test, which is used to compare the means of a continuous numerical variable across a number of groups. Since we are testing one variable across different groups, I will use a one-way ANOVA.
3. What data is needed to run the statistical test? I would need to collect the fuel economy in mpg of various competitor brands to compare against MechaCar. I also want to ensure that the comparison is made between cars of a similar class. So I would also need a breakdown of the fuel economy by car class for MechaCar and competitor companies.

