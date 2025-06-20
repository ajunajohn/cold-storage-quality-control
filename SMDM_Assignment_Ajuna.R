#Set working directory
setwd("D:/GreatLakes/SMDM") 
getwd()

#Read the dataset
library(readr)
mydata = read.csv("Cold_Storage_Temp_Data_ (1).csv",header = TRUE)

#Exploratory Data Analysis
dim(mydata)
names(mydata)
summary(mydata)
str(mydata)


boxplot(mydata$Temperature~mydata$Season,col=c('Red','blue','orange'))

hist(mydata$Temperature,main='Cold Storage Temperature Histogram',xlab = "Temperature", 
     ylab = "Frequency",col = "turquoise")

boxplot(Temperature,main='Cold Storage Temperature Box Plot',xlab = "Temperature", 
        ylab = "Frequency",col = "turquoise1",horizontal = TRUE)

#1. Find mean cold storage temperature for Summer, Winter and Rainy Season

by(mydata,INDICES = mydata$Season,FUN = summary)
by(mydata$Temperature,INDICES = mydata$Season,FUN = mean)
by(mydata$Temperature,INDICES = mydata$Season,FUN = var)



#2. Find overall mean for the full year
TempMean=mean(mydata$Temperature)
TempMean

#3. Find Standard Deviation for the full year
StdDeviation =sd(mydata$Temperature,na.rm=TRUE)
StdDeviation


#4. Assume Normal distribution, what is the probability of temperature having fallen below 2º C?
x=pnorm(2,TempMean,StdDeviation,lower.tail = TRUE)
x

#5. Assume Normal distribution, what is the probability of temperature having gone above 4º C?
y=1-pnorm(4,TempMean, StdDeviation,lower.tail = TRUE)
y


#6. What will be the penalty for the AMC Company?
Total_Probability <- x+y
Total_Probability

## Calculate Penalty
if(Total_Probability>0.025 && Total_Probability <= 0.05){penalty = '10%'
}else if(Total_Probability >0.5){penalty = '25%'
}else penalty = '0%'

penalty

# Penality is 10%

#############################################################################

#Problem 2

#Read the dataset
coldData = read.csv("Cold_Storage_Mar2018_.csv",header = TRUE)

#Exploratory Data Analysis
dim(coldData)
names(coldData)
summary(coldData)
str(coldData)


hist(coldData$Temperature,main='Cold Storage Temperature Histogram',xlab = "Temperature", 
     ylab = "Frequency",col = "turquoise")

boxplot(coldData$Temperature,main='Cold Storage Temperature Box Plot',xlab = "Temperature", 
        ylab = "Frequency",col = "turquoise1",horizontal = TRUE)
#There are possible outliers/extreme values in the sample

#1. Which Hypothesis test shall be performed to check the if corrective action is needed at the cold storage plant? Justify your answer.

# One sample t test can be performed. As one sample is being compared with a standard.
#Also, n>30 and population std deviation is not known.


mu = 3.9
n=35

#2. State the Hypothesis and do the necessary calculations to accept or reject the corresponding null hypothesis

#H0: Temperature <= 3.9 degree celcius
#Ha: Temperature > 3.9 degree celcius
#As alternate hypothesis is with a greater than sign, it is a Right tailed test,
#One - sample t -test
#############################################################################

t.test(coldData$Temperature,mu=mu,paired = FALSE,
       alternative = "greater",
       conf.level = .9)
#p value obtained is 0.004711 which is much less than alpha=.1
#Hence null hypothesis is rejected. i.e The temperature is above 3.9 Degree celcius
#So, corrective action is required.

#3. Give your inference.

# One sample t test is performed. This is because,here one sample is being compared with a standard.
# Also, n>30 and population std deviation is not known.
# From the hypothesis test it is recommended that a corrective action has to be done