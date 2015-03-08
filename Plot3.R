## load data
source("loadData.R")

## plot to PNG
png(filename="plot3.png",width=640,height=480)

## plot on screen 
plot(targetData$Time ,targetData$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
lines(targetData$Time ,targetData$Sub_metering_1, col ="black") 
lines(targetData$Time ,targetData$Sub_metering_2, col ="red") 
lines(targetData$Time ,targetData$Sub_metering_3, col ="blue") 
legend("topright", 
       lty="solid", 
       col=c("black","red","blue"), 
       legend=names(targetData[7:9]))

## save to file 


dev.off()


