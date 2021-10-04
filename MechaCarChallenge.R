library(dplyr)

Mecha_mpg <- read.csv('MechaCar_mpg.csv') #import dataset for deliverable 1

reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_mpg) #perform the multiple linear regression
summary(reg) #view the summary of the regression

coil <- read.csv('Suspension_Coil.csv') #import dataset for deliverable 2

total_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary<- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep")
