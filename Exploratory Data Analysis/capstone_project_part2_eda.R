#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Capstone Part 2 (EDA)
# Name: Jason Tan
# Theme / Topic: Visualization and Feature Selection 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# load dataset into the variable 'df'
data <- read.csv(file.choose(),header = T)


# check missing values
colSums(is.na(data))
plot_missing(data)

# create another variable as dataset backup
data2 <- data  

data <- data[ ,-1] # remove irrelevant variables (as identified in part 1)
names(data) # double confirm the changes made


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# convert variable type from 'character' to 'factor'

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

data$pref_travel_destination <- as.factor(data$pref_travel_destination)
data$gender <- as.factor(data$gender)
data$age <- as.factor(data$age)
data$household_income <- as.factor(data$household_income)
data$marital_status <- as.factor(data$marital_status)
data$chidlren_no <- as.factor(data$chidlren_no)
data$education_level <- as.factor(data$education_level)
data$occupation <- as.factor(data$occupation)
data$trip_plan_likelihood <- as.factor(data$trip_plan_likelihood)
data$travel_purpose <- as.factor(data$travel_purpose)
data$source_travel_info <- as.factor(data$source_travel_info)
data$pref_socialmed_info <- as.factor(data$pref_socialmed_info)
data$pref_transport_mode <- as.factor(data$pref_transport_mode)
data$pref_length_stay <- as.factor(data$pref_length_stay)
data$travel_pay_willingness <- as.factor(data$travel_pay_willingness)
data$pref_poi <- as.factor(data$pref_poi)
data$pref_group_size <- as.factor(data$pref_group_size)


str(data) # check data type after changes made


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Exploratory Data Analysis (EDA)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Load necessary libraries
library(ggplot2)
library(dplyr)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Univariate Analysis
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Gender

bar <- ggplot(data, aes(x = gender, fill = gender))
bar + geom_bar() + theme_light() + 
  labs(title = "Gender Distribution")
data %>% count(gender)

# Age

bar <- ggplot(data, aes(x = age, fill = age))
bar + geom_bar() + theme_light() + 
  labs(title = "Age Distribution")
data %>% count(age)

# Monthly Household Income

bar <- ggplot(data, aes(x = household_income, fill = household_income))
bar + geom_bar() + theme_light() + 
  labs(title = "Household Income Distribution")
data %>% count(household_income)

# Marital Status

bar <- ggplot(data, aes(x = marital_status, fill = marital_status))
bar + geom_bar() + theme_light() + 
  labs(title = "Marital Status Distribution")
data %>% count(marital_status)

# No. of Children

bar <- ggplot(data, aes(x = chidlren_no, fill = chidlren_no))
bar + geom_bar() + theme_light() + 
  labs(title = "Number of Children Distribution")
data %>% count(chidlren_no)

# Education

bar <- ggplot(data, aes(x = education_level, fill = education_level))
bar + geom_bar() + theme_light() + 
  labs(title = "Education Level Distribution")
data %>% count(education_level)

# Occupation

bar <- ggplot(data, aes(x = occupation, fill = occupation))
bar + geom_bar() + theme_light() + 
  labs(title = "Occupation Distribution")
data %>% count(occupation)

# preferred transport mode

bar <- ggplot(data, aes(x = pref_transport_mode, fill = pref_transport_mode))
bar + geom_bar() + theme_light() + 
  labs(title = "Preferred Mode of Transport - Distribution")
data %>% count(pref_transport_mode)

# preferred length stay

bar <- ggplot(data, aes(x = pref_length_stay, fill =pref_length_stay))
bar + geom_bar() + theme_light() + 
  labs(title = "Preferred Length of Stay - Distribution")
data %>% count(pref_length_stay)

# Willingness to pay

bar <- ggplot(data, aes(x = travel_pay_willingness, fill =travel_pay_willingness))
bar + geom_bar() + theme_light() + 
  labs(title = "Willingess to Pay - Distribution")
data %>% count(travel_pay_willingness)

# preferred poi

bar <- ggplot(data, aes(x = pref_poi, fill =pref_poi))
bar + geom_bar() + theme_light() + 
  labs(title = "Preferred Point of Interest - Distribution")  +
  scale_x_discrete(labels=c("Adventure & Activity","Beaches & Waterfall","Cultural Site","Shopping Malls"),
                   position="bottom")

# preferred travel group size

bar <- ggplot(data, aes(x = pref_group_size, fill =pref_group_size))
bar + geom_bar() + theme_light() + 
  labs(title = "Preferred Travel Group Size - Distribution")  +
  scale_x_discrete(labels=c("Family Travel (3 to 6) ","Large Group (More than 10)","Small Group (6 to 10)"),
                   position="bottom")

data %>% count(pref_group_size)

# preferred travel destination

bar <- ggplot(data, aes(x = pref_travel_destination, fill = pref_travel_destination))
bar + geom_bar() + theme_light() + 
  labs(title = "Preferred Travel Destination - Distribution") +
  scale_x_discrete(labels=c("Central Region","East Coast Region","East Malaysia", "Northern Region","Southern Region"),
                   position="bottom")

data %>% count(pref_travel_destination)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Bivariate Analysis
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Hypothesis 1
# Gender vs. Preferred travel destination
# H0: Gender does not have any affect on preferred travel destination
# H1: Gender does have an affect on preferred travel destination

bar <- ggplot(data, aes(x = gender, fill = pref_travel_destination))
bar + geom_bar(position="fill") + theme_light() +
  labs(y = "Preferred Count", title = "Preferred Travel Destination by Gender") 


table(data$gender, data$pref_travel_destination)
chisq.test(data$gender, data$pref_travel_destination, correct=FALSE)

# Reject H0, Accept H1 as the p-value is lesser than 0.05

# Hypothesis 2
# preferred travel destination vs. Preferred poi
# H0: Preferred poi does not have any affect on preferred travel destination
# H1: Preferred poi does have an affect on preferred travel destination

bar2 <- ggplot(data, aes(x = pref_poi, fill = pref_travel_destination))
bar2 + geom_bar(position="fill") + theme_light() +
  labs(y = "Preferred Count", title = "Preferred Travel Destination by Preferreed POI") +
  scale_x_discrete(labels=c("Adventure & Activity","Beaches & Waterfall","Cultural Site","Shopping Malls"),
                   position="bottom")

chisq.test(data$pref_travel_destination, data$pref_poi, correct=FALSE)

# Hypothesis 3
# preferred travel destination vs. household_income
# H0: household_income does not have any affect on preferred travel destination
# H1: household_income does have an affect on preferred travel destination

bar3 <- ggplot(data, aes(x = household_income, fill = pref_travel_destination))
bar3 + geom_bar(position="fill") + theme_light() +
  labs(y = "Preferred Count", title = "Preferred Travel Destination by Monthly Household Income") 

chisq.test(data$pref_travel_destination, data$household_income, correct=FALSE)


######## age/income/occupation/education level vs. Preferred travel destination

chisq.test(data$age, data$pref_travel_destination, correct=FALSE)
chisq.test(data$household_income, data$pref_travel_destination, correct=FALSE)
chisq.test(data$occupation, data$pref_travel_destination, correct=FALSE)
chisq.test(data$education_level, data$pref_travel_destination, correct=FALSE)


######## age/income/occupation/education level vs. Preferred poi

chisq.test(data$gender, data$pref_poi, correct=FALSE)
chisq.test(data$age, data$pref_poi, correct=FALSE)
chisq.test(data$household_income, data$pref_poi, correct=FALSE)
chisq.test(data$occupation, data$pref_poi, correct=FALSE)
chisq.test(data$education_level, data$pref_poi, correct=FALSE)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Feature Selection - Boruta Algorithm

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

library(Boruta) # Boruta Package used for feature selection

data_boruta <- Boruta(pref_travel_destination ~ ., data = data, doTrace = 2)
print(data_boruta)
plot(data_boruta, las = 2, cex.axis = 0.7)
attStats(data_boruta)


# Additional Source
# https://www.youtube.com/watch?v=h35Vr9Aby9s






