install.packages("readr")
install.packages("janitor")
install.packages("dplyr")
install.packages("tidyverse")
install.packages("lubridate")



#load packages
library(readr)
library(janitor)
library(dplyr)
library(tidyverse)
library(lubridate)

------------------------------------------------------------------------------------------------------------------
#Import Data
activity <- read_csv("Data/dailyActivity_merged.csv")
sleep <- read_csv("Data/sleepDay_merged.csv")
weight <- read_csv("Data/weightLogInfo_merged.csv")

------------------------------------------------------------------------------------------------------------------
#Data Validation
colnames(activity)
colnames(sleep)
colnames(weight)

------------------------------------------------------------------------------------------------------------------
#Preview Data
head(activity)
head(sleep)
head(weight)

------------------------------------------------------------------------------------------------------------------
#Count rows with "na" values
colSums(is.na(activity))
colSums(is.na(sleep))
colSums(is.na(weight))

------------------------------------------------------------------------------------------------------------------
# Convert Id to character data type 
# Convert Day to date format 
# Rename various dates to Day
  
activity <-activity %>%
  mutate_at(vars(Id), as.character) %>%
  mutate_at(vars(ActivityDate), as.Date, format = "%m/%d/%y") %>%
  rename("Day"="ActivityDate")

sleep <-sleep %>%
  mutate_at(vars(Id), as.character) %>%
  mutate_at(vars(SleepDay), as.Date, format = "%m/%d/%y") %>%
  rename("Day"="SleepDay")

weight <-weight %>%
  mutate_at(vars(Id,LogId), as.character) %>%
  mutate_at(vars(Date),as.Date, format = "%m/%d/%y") %>%
  rename("Day"="Date")
  
------------------------------------------------------------------------------------------------------------------
# Combine data frames & add day of the week
  
combined_data <-sleep %>%
  full_join(activity, by=c("Id","Day")) %>%
  full_join(weight, by=c("Id", "Day")) %>%
  mutate(Weekday = weekdays(as.Date(Day, "m/%d/%Y")))


------------------------------------------------------------------------------------------------------------------
# Find and remove duplicate rows & count 'NA' and distinct Ids
  
combined_data <-combined_data[!duplicated(combined_data), ]
 sum(is.na(combined_data))
 n_distinct(combined_data$Id)
 n_distinct(sleep$Id)
 n_distinct(weight$Id)

  
------------------------------------------------------------------------------------------------------------------  
# Order the days of the week
   
combined_data$Weekday <-factor(combined_data$Weekday, levels=c
                               ("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))
 
 
------------------------------------------------------------------------------------------------------------------
# Select summary statistics 
combined_data %>%
   select(TotalMinutesAsleep, TotalSteps, TotalDistance, VeryActiveMinutes, 
          FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes, Calories, 
          WeightKg, Fat, BMI, IsManualReport) %>%
   summary()
 
 
------------------------------------------------------------------------------------------------------------------
#Save the cleaned data
write.csv(combined_data,file = "Data/combined_data.csv",row.names = FALSE)

 