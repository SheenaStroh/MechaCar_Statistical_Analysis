library(dplyr)

Mecha_mpg <- read.csv('MechaCar_mpg.csv') #import dataset

reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_mpg)
summary(reg)
