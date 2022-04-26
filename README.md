# MechaCar_Statistical_Analysis

An Analysis Employing R Statistical Package

## Background
We're helping Jeremy, the principal analyst at AutosRUs who is trying to bring the company into the 21st century through data analytics. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.
## Linear Regression to Predict MPG
In this analysis we used MechaCar_mpg.csv dataset containing MPG test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. The six variables of MechaCar_mpg.csv file are shown in Figure 1.

#### Figure 1

------------------------------
![1.1.png](https://github.com/Ricardolpz99/MechaCar_Statistical_Analysis/blob/main/Resources/images/Del%201/1.png)

------------------------------
Having satisfied the assumptions for a linear regression analysis we set the study hypothesis as follows:
H0: The slope of the linear model is zero (m = 0) and no significant linear relationship exists between MPG and any of study variables.

Using R linear regression function ln(), we called the variables into th formula and calculated coefficient for each variable as shown in Figure 2.

#### Figure 2: The Calculated coefficient for each variable in the proposed linear regression model

------------------------------
![1.2.png](https://github.com/Ricardolpz99/MechaCar_Statistical_Analysis/blob/main/Resources/images/Del%201/1.2.png)

------------------------------

•	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    By significantly low p-values, vehicle_length (p-value=2.60e-12), and ground_clearance (p-value=5.21e-08) could provide nonrandom amount of variance to the mpg in this study.

• Is the slope of the linear model considered to be zero? Why or why not?
    Considering the significant p-values for at least two variables indicate that the slope of the linear regression is not zero and the two could provide variance to mpg in a non-random fashion.

• Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    Interestingly, the intercept (p-value=5.08e-08) has a significant p-value too. This indicates that aside from vehicle_length and ground_clearance, there might be at least another variable that could affect mpg. 

## Summary Statistics on Suspension Coils 
To manouver around ground_clearance variable, the MechCar automaker needs to evaluate suspension coils provided from different suspension manufacturers to choose the ones that satisfy the design standards of the company. Figure 3 shows a sample of suspension coils available.

#### Figure 3

------------------------------
![2.1.png]( https://github.com/Ricardolpz99/MechaCar_Statistical_Analysis/blob/main/Resources/images/Del%202/2.0.png)

------------------------------

The mean of suspension coils PSI metric is 1498.78  (SD = ±7.9). The summary table calculated from the available suspension coil lots will be very helpful to choose the ones that provide the company design standards (Figure 4).

#### Figure 4

------------------------------
![2.2.png](https://github.com/Ricardolpz99/MechaCar_Statistical_Analysis/blob/main/Resources/images/Del%202/2.1.png)

------------------------------

• Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    The suspension coils from three manufacturing lots seem to meet those standards as their mean is or is close to 1500 PSI.

To summarize:
As the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Moreover, we had earlier noticed (Figure 4), that the "variance" of the suspension coils could be tolerated at around 62 PSI. Adding the variance of 170 to a mean of 1496 PSI from the third manufacturing lot, renders this lot outside the expected range of MechaCars standard design for suspension coils.


#### Figure 5
------------------------------
![2.3.png](https://github.com/Ricardolpz99/MechaCar_Statistical_Analysis/blob/main/Resources/images/Del%202/2.2.png)

------------------------------


## T-Tests on Suspension Coils

A summary t-test was performed on the suspension coil PSIs metric to determine the population mean across all available manufacturing lots and provide a source to compare other lots with this metric (Figure 6). 
H0 was regarded as the state where the PSI of suspension coils is not different from each other.

It seems that the PSI population mean across all lots is not significant (p-value = 0.06), and therefor, H0 could not be rejected. 


#### Figure 6:  
------------------------------
![3.0.png](https://github.com/Ricardolpz99/MechaCar_Statistical_Analysis/blob/main/Resources/images/Del%203/3.0.png)

------------------------------


A closer look at the p-values for Lots 1 to 3 (Figure 7), indicates that Lot 1 (p-value = 1) and Lot 2 (p-value = 0.6) have p-values greater than study significance level of 0.05, and therefore, their PSIs are not different from each other. On the other hand the p-value for Lot 3 is statistically significant, indicating Lot 3 has a meaningfully different PSI than the other two lots. Lot 3 showed, for the second time that is out of the MechaCar design standards (great variance in PSI) and study level of significance.


#### Figure 7: 
------------------------------
![3.1.png](https://github.com/Ricardolpz99/MechaCar_Statistical_Analysis/blob/main/Resources/images/Del%203/3.1.png)

------------------------------


## Study Design: MechaCar vs Competition


1.	Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

Preparing for a hupothetical competition, the MechaCar manufacturing could evaluate some other metrics to improve its products. As an example highway vs city fuel efficeincey in a classs of cars. Emissions could  a second metric to work on.


3.	In your description, address the following questions:
•	What metric or metrics are you going to test?
Highway mileage per galon o (HMPG) would be tested across different classes of cars.


•	What is the null hypothesis or alternative hypothesis?
The H0 or null hypothesis is that different classes of cars do not have different fuel efficincies.

•	What statistical test would you use to test the hypothesis? And why?
For the fuel efficiency we could use a one-way analysis of variance (ANOVA) that takes care of a dependent variable (HMPG) vs classes of cars (independent variables). 

•	What data is needed to run the statistical test?
For this study we will need highway fuel consumption across different classes of cars, specifically showing the number of cylinders, weight of the cars, number of seats, and other metrics as discussed earlier.
  
