## load data
source("loadData.R")

## plot to PNG 
png(filename="plot2.png",width=640,height=480)

## plot on screen 
plot(targetData$Time,
     targetData$Global_active_power,
     type="l", 
     ylab="Global Active Power (kilowatts)",
     xlab="")


## save to file 


dev.off()

