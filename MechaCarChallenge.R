# Deliverable 1 Requirements
library(dplyr)     # Use the library() function to load the dplyr package
MechaCar_mpg_df <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)     #Import and read in the MechaCar_mpg.csv file as a dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_df)     #Perform linear regression using
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_df))     #Generate summary


# Deliverable 2 Requirements
Suspension_Coil_df <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)     #Import and read in the Suspension_Coil.csv file as a dataframe
total_summary_df <- Suspension_Coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))     #DataFrame using summarize function to get mean, median, variance and sd of PSI column