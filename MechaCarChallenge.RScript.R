install.packages("dplyr")
library(dplyr)

#read CSV
table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#multiple lin regression
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=table)

#summary
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=table))

#Technical Analysis

#Read CSV 
susp <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Total summary
summarize_demo <- susp %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Stddev_PSI=sd(PSI), .groups = 'keep') #create summary table
#Lot summary
lot_summary <- susp %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Stddev_PSI=sd(PSI), .groups = 'keep')

#T-Tests

# T-tests on suspension coils
t.test(susp$PSI, mu=1500)

t.test(subset(susp,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(susp,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(susp,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
