library(dplyr)

# Deliverable 1

MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~  vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_table) #generate multiple linear regression model

summary(lm(mpg ~  vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_table)) #generate summary statistics

#Deliverable 2 

SusCoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- SusCoil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

lot_summary <- SusCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

#Deliverable 3 

t.test(SusCoil_table$PSI, mu=1500) #compare PSI of lots versus population mean

t.test(SusCoil_table$PSI, mu=1500, subset=(SusCoil_table(Manufacturing_Lot=="Lot1"))) #compare PSI of lot 1 versus population mean

t.test(SusCoil_table$PSI, mu=1500, subset=(SusCoil_table(Manufacturing_Lot=="Lot2"))) #compare PSI of lot 2 versus population mean

t.test(SusCoil_table$PSI, mu=1500, subset=(SusCoil_table(Manufacturing_Lot=="Lot3"))) #compare PSI of lot 3 versus population mean