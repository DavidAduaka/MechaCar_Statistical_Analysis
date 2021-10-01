# MechaCar_Statistical_Analysis
  
## Linear Regression to Predict MPG
Fig. 1:

![image](https://user-images.githubusercontent.com/70069730/135549266-9a328b37-f075-43ff-9778-dd69da45eac4.png)

- When a summary (Fig.1) is ran on our linear model we see summary statistics of how eaach variable effects the linear model. The highlighted column, Pr(>|t|) tells us the probability that each coefficient contributes a random amount of variance to the linear model. According to the results, vehicle length, ground clearance, and the intercept are statistically unlikely to provide random amounts of variance to the linear model. The p-value confirms that the slope of our model is not zero. The p-value is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can say that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero. The Multiple R-squared value tells us how effectively this model predicts mpg of MechaCar prototypes, a value of 0.71 which means that roughly 71% of the variablilty of our dependent is explained using this linear model, which is very effective.

## Summary Statistics on Suspension Coils
Fig. 2:

![image](https://user-images.githubusercontent.com/70069730/135549505-c377466f-ecc7-43cd-aa72-c227c5445e2e.png)

Fig. 3: 

![image](https://user-images.githubusercontent.com/70069730/135549534-3579be7f-0ebb-4075-8828-15ff0c46f7f1.png)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. According to the data in Fig. 2 for the total summary of all three lots, the desing specification is met. Although, when you look at Fig. 3 you can see that Lot 3 has a very high variance and that is due to the fact that it has very large and very small PSI's when compared to the rest of the data set. 



