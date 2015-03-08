## load data
source("loadData.R")
## plot to PNG 
png(filename="plot4.png",width=640,height=480)

par(mfrow = c(2, 2))
## plot on screen 
plot(targetData$Time,
     targetData$Global_active_power,
     type="l", 
     ylab="Global Active Power (kilowatts)",
     xlab="")


## plot 2 on screen 
plot(targetData$Time ,targetData$Voltage, type="n", ylab="Voltage", xlab="datetime")
lines(targetData$Time ,targetData$Voltage) 

## plot 3 on screen 
plot(targetData$Time ,targetData$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
lines(targetData$Time ,targetData$Sub_metering_1, col ="black") 
lines(targetData$Time ,targetData$Sub_metering_2, col ="red") 
lines(targetData$Time ,targetData$Sub_metering_3, col ="blue") 
legend("topright", 
       lty="solid", 
       lwd = 1,
       col=c("black","red","blue"), 
       legend=names(targetData[7:9]))

## plot 4 on screen 
plot(targetData$Time ,targetData$Global_reactive_power, type="n", ylab="Global_reactive_power", xlab="datetime")
lines(targetData$Time ,targetData$Global_reactive_power) 

## save to file 


dev.off()
