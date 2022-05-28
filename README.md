# MechaCar_Challenge
liner regressions, t-tests and other statistical analysis using R


## Linear Regression to Predict MPG
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle length and ground clearnace provided a non-random amount of variance to the mpg values in the dataset.

Is the slope of the linear model considered to be zero? Why or why not?
- No, it can not be considered 0 because the p-value is 5.35x10-11 an extreme level of signifigance that indicates that there is more than random chance and the null hypothesis must be rejected.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- Yes it does though not perfectly. The r-squared value of 0.7149, shows that the model is 71% accurate.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- One of the lots has an issue with variance where Lot 3 is over the limit, at 170.28

## T-Tests on Suspension Coils
- Looking at the T-test that compares all lots, there is no statistical difference from the population mean, and the p-value is not low enough to reject the null hypothesis.
- Lot 1's t-test shows there is no statistical difference from the population mean, and the p-value is not low enough to reject the null hypothesis.
- Lot 2's t-test shows there is no statistical difference from the population mean, and the p-value is not low enough to reject the null hypothesis.
- Lot 3's t-test shows that there is a slight statistical difference between the population mean and the p- value in barely low enough for us to reject the null hypothesis. 


