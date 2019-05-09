##
##  Loading the data 
##    This assignment uses data from the UC Irvine Machine Learning Repository,
##    Dataset: Electric power consumption  
##
##  
##  Making Plots 
##    goal is to examine how household energy usage varies over a 2-day period in February, 2007
##    reconstruct the plots like the plots in the assignment
##
##
setwd("~/Downloads/")
householdFile <- "household_power_consumption.txt"
plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")

##
## set time variable
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

##
## Generating Plot 2
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")


##
##  The Plot #2 is generated on the device, export it to the png file, 
##  and adjust the width/heigth according to the requirement 480x480
