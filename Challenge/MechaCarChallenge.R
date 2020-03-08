# read in dataset
MechaCar <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
head(MechaCar)
View(MechaCar)
# generate multiple linear regression model
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance,data=MechaCar)
# summary of multiple linear regression
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance,data=MechaCar))
# add the library
library(tidyverse)
# read in dataset
Suspension <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) 
head(Suspension)
# summary statistics table
summarize <- Suspension  %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI), SD_PSI=sd(PSI))
View(summarize)
# Lot1 subset
t.test(subset(Suspension, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
# Lot2 subset
t.test(subset(Suspension, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
# Lot3 subset
t.test(subset(Suspension, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
# overall student t-test
t.test(Suspension$PSI, mu=1500)
