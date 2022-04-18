# Loading packages
library(dplyr)
library(tidyverse)


# Deliverable 1

# reading the csv file 
mecha_car <- read.csv(file='Resources/data/MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

head(mecha_car)


# Linear regression for all variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)


# Summary: P-value and the r-squared value for all variables in the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car))


# Deliverable 2
# Reading the csv file into R
Suspension_Coil <- read.csv(file='Resources/data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Creating total_summary dataframe using summarize() function to get mean, 
# median, variance, and SD of suspension coil's PSI column.

head(Suspension_Coil)

total_summary <- summarize(Suspension_Coil,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
total_summary

# Creating lot summary dataframe using group_by() and summarize() functions


lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

lot_summary


# Deliverable 3
# T-tests against population mean of 1500 PSI
t.test(Suspension_Coil$PSI, mu=1500)

lot1 <- Suspension_Coil %>% subset(Manufacturing_Lot=="Lot1")
t.test1 = t.test(lot1$PSI, mu=1500)


lot2 <- Suspension_Coil %>% subset(Manufacturing_Lot=="Lot2")
t.test2 = t.test(lot2$PSI, mu=1500)


lot3 <- Suspension_Coil %>% subset(Manufacturing_Lot=="Lot3")
t.test3 = t.test(lot3$PSI, mu=1500)

t.test1 
t.test2  
t.test3
