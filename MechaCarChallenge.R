library(dplyr)

Mecha_mpg <- read.csv('MechaCar_mpg.csv') #import dataset for deliverable 1

reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_mpg) #perform the multiple linear regression
summary(reg) #view the summary of the regression

coil <- read.csv('Suspension_Coil.csv') #import dataset for deliverable 2

total_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #Create total summary dataframe

lot_summary<- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep") #create lot summary dataframe

t.test(coil$PSI, mu=1500) #T-Test across all manufacturing lots

lot1 <- subset(coil,Manufacturing_Lot=="Lot1") #create subsets
lot2 <- subset(coil,Manufacturing_Lot=='Lot2')
lot3 <- subset(coil,Manufacturing_Lot=='Lot3')

t.test(lot1$PSI, mu=1500) #t-test for each subset
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
