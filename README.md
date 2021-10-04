# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

The resuls of the multiple linear regression to predict MPG are as follows:

![LinRegMPG](https://user-images.githubusercontent.com/85318060/135897892-2b5a20ba-afdb-4d99-995d-464f9461220c.png)

According to this data the intercept, vehicle length, and ground clearance provide a non-random amount of variance to the mpg values in the dataset. The slope of the linear model is not considered to be zero because the mpg appears to change as the vehicle length and ground clearance changes. This linear model does not appear to predict mpg of MechaCar prototypes effectively. Though the adjusted R-squared value is at .68, which is a decent number, the fact that the intercept appears to provide variance to the mpg shows that there likely need to be further adjustments to the model to make it fit better. There is also a chance of overfitting since only two of the five variables show a correlation.

## Summary Statistics on Suspension Coils

When looking at the dataset as a whole, the variance is around 62 PSI, which is within the design specification of being less than 100 PSI, even taking into account the standard deviation. However, when you break down the data by lot, it becomes apparent that while Lot 1 and Lot 2 meet the specification, with variances of 1 and 7.5 PSI respectively, Lot 3 does not. Lot 3 has a variance of 170.3 PSI, which is significantly higher than the specification of less than 100.

## T-Tests on Suspension Coils

When performing T-tests on these samples we are looking at the null hypothesis that says the true mean does not equal the population value of 1500 PSI. For each test we have to look at the p-value and determine if we can reject the null hypothesis or not.
When looking at the entire dataset we get the following results:
![TTest-total](https://user-images.githubusercontent.com/85318060/135921591-b73a518e-2544-4608-8d6a-faef94af3628.png)
This p value is 0.06, which is higher than the 0.05 confidence interval, therefore we fail to reject the null hypothesis and we can say that our mean PSI is not significantly different than the population total of 1500 PSI.
For Lot 1 we get the following results:
![TTest-Lot1](https://user-images.githubusercontent.com/85318060/135922146-051e25fd-5e51-432f-95e5-bc8e62e1dfc1.png)
Here the p value is 1, which again leaves us failing to reject the null hypothesis. This tells us the mean is not significantly different than 1500 PSI.
For Lot 2 we get the following results:
![TTest-Lot2](https://user-images.githubusercontent.com/85318060/135922313-15901479-4e69-4e0c-b6a5-61d9ff7c1561.png)
The p value of 0.61 once again failing to reject our null hypothesis, showing that the mean for Lot 2 is also not signifcantly different than the population mean of 1500.
Finally, for Lot 3 we get the following results:
![TTest-Lot3](https://user-images.githubusercontent.com/85318060/135922449-5b33b275-c03d-426f-950a-626e7db71ef6.png)
In this case our p value is 0.042, which is less than our 0.05 confidence interval. In this case we can reject our null hypothesis and we know that the mean of lot 3 is significantly different than the population mean of 1500.

## Study Design: MechaCar vs Competition
The metrics that I would test when comparing the MechaCar with it's competition are cost and city fuel efficiency. I think these would be two metrics that would be of interest to consumers buying the cars. The null hypothesis for each would be that there is no statistical difference between the cost or between the city mpg of MechaCar and it's competitors.
To test this hypothesis I would use the 2-sample t-test for each metric. In this example we would have two different samples of data and we would be testing to find a difference between those two different samples. Since both cost and city mpg would be categorical data, the 2-sample t-test would be the way to go.
In order to run this test we would need examples of both cost and city fuel efficiency from a selection of MechaCars, as well as the same data from a collection of the competitors cars. Once we had all of the data available we could perform the 2-sample t-test and determine if the values for MechaCar were significantly different than the values from the competitor cars.
