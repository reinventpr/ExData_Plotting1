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


## Generating Plot 3
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(finalData$SetTime, finalData$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(finalData$SetTime, finalData$Sub_metering_2, col=columnlines[2])
lines(finalData$SetTime, finalData$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")

##
##  The Plot #3 is generated on the device, export it to the png file, 
##  and adjust the width/heigth according to the requirement 480x480
