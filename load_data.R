
#loadinf data
dailyactivity <- read.csv("dailyActivity_merged.csv")
dailyCalories <- read.csv("dailyCalories_merged.csv")
dailyinte <- read.csv("dailyIntensities_merged.csv")
dailysteps <- read.csv("dailySteps_merged.csv")
weigthInfo <- read.csv("weightLogInfo_merged.csv")
sleepday <- read.csv("sleepDay_merged.csv")
minute_cal_narr <- read.csv("minuteCaloriesNarrow_merged.csv")
minute_cal_wide <- read.csv(("minuteCaloriesWide_merged.csv"))

#load libraries
library(dplyr)
library(ggplot2)
library(janitor)
library(tidyverse)
library(lubridate)

#modify to date type
dailyactivity <- dailyactivity %>%
  rename(date = ActivityDate) %>%
  mutate(date = as.Date(date, format = "%m/%d/%y"))

steps_by_day <- act_daily2 %>%
  group_by(week_day) %>%
  summarise(pasos = mean(TotalSteps))

ggplot(data = act_daily2, aes(x = week_day, y = TotalSteps))+
  geom_boxplot()

