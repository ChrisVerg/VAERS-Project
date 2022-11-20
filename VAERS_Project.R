# The purpose of this project if to learn how to and improve my coding abilities
# I will follow COVID injuries with data straight from Vaccine Adverse Event 
# Reporting system (VAERS).

# I intend to develop and examine the data to compare the injury rate compared to
# that of other vaccines. This will require other data of total estimated vaccines
# delivered. 

# Also, I will try to break down the data into severe reactions and then 
# further what the demographic of severe reactions were by age and risk factors. 





library(ggplot2)
library(dplyr)
library(readr)
library(readxl)
library(tidyverse)
library(reshape2)
library(datasets)
library(PerformanceAnalytics)
library(corrplot)
library(gridExtra)
library(Ecdat)

# The main data set is pulled from the .cxv file in  VAERS Directory X2021VAERSVAX
# This cuts down the data to ID number and VAX type
VAERS_ID_VAX <- X2021VAERSVAX %>% select(VAERS_ID, VAX_TYPE)
all_reported_count <- count(X2021VAERSVAX)

# Next is make a data frame that indicates true or false. TRUE if VAX type is COVID19 

# This Vector shows only Vax type 
COVID_vector <- VAERS_ID_VAX$VAX_TYPE
view(COVID_vector)

# This is the vector only showing TRUE or FALSE
covid_TF <- COVID_vector == "COVID19"
view(covid_TF)


# This creates the data frame needed to Isolate the COVID19 VAX type by TRUE/FALSE
three_by_df <- data.frame(covid_TF, VAERS_ID_VAX)
view(three_by_df)

# The next step is to Isolate the rows by only those that read true in the covid_TF column
# This returns only the index numbers from three_by_df that contain TRUE
true_only <- which(three_by_df == TRUE)
true_only

# create a vector from the TRUE index numbers

true_only_vector <- true_only

# now use the true_only_vector in slice to retrun only the TRUE COVID19 rows from
# the three_by_df

only_covid_df <- three_by_df %>% slice(true_only_vector)
only_covid_count <- count(only_covid_df)
only_covid_count

# This returns only 726202 of the original 781128

c19_vs_all_diff <- 781128 -726202
c19_vs_all_diff
# This means that off all vaccines injuries reported that 54,926 we not COVID
# Now filter for "not COVID" to make sure that data analysis is correct
# Using the same filter except with false, the total should be 54926. 

# The next step is to Isolate the rows by only those that read true in the covid_TF column
# This returns only the index numbers from three_by_df that contain TRUE
false_only <- which(three_by_df == FALSE)
false_only

length(false_only)

# 54926 is the same


# So in 2021 the percent of COVID 19 injuries compared to all reported vaccine 
# injuries is 

covid_percent <- (only_covid_count / all_reported_count) * 100
covid_percent


# Next Compare the same data for other years to create a trend line. 

# Ignore all of this, I am just looking at old code that worked for other stuff
# Ok, now compare the years that the compare_5 are higher than the compare_all

compared1 <- compare_5$med.life.5 > compare_all$med.life
view(compared1)

# which returns which were true by index
RowsTrue <- which(compared1 == TRUE)
RowsVec <- RowsTrue
RowsVec

# slice returns the rows by index to retreieve the data by row number
years_with_higher_gdp <- compare_5 %>% slice(9,11,12)
years_with_higher_gdp

only_true <- compare_5 %>% slice(RowsVec)
view(only_true)



dplyr::filter(VAERS_ID_VAX, !grepl("COVID19",TrackingPixel))

dplyr::filter(df, !grepl("RTB",TrackingPixel))

COVID_vector <- VAERS_ID_VAX$VAX_TYPE
view(COVID_vector)

covid_TF <- COVID_vector == "COVID19"
view(covid_TF)

three_by_df <- data.frame(covid_TF, VAERS_ID_VAX)
view(three_by_df)

only_covid <- COVID_vector == "COVID19"
view(COVID_vector)



tail(only_covid)
length(only_covid)
count(VAERS_ID_VAX)
