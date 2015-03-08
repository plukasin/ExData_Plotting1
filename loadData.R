## load and prepare data 
filename <- "household_power_consumption.txt"
mydata <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
mydata$Date <- as.Date(mydata$Date,"%d/%m/%Y")
targetData <- mydata[mydata$Date=="2007-02-01" | mydata$Date=="2007-02-02",]
targetData$Time <- strptime(paste(targetData$Date, targetData$Time), format="%Y-%m-%d %H:%M:%S")
attach(targetData)