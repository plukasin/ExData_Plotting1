## load data

source("loadData.R")
## plot to PNG 
png(filename="plot1.png",width=640,height=480)

## plot on screen 
hist(targetData$Global_active_power, 
     col="red", 
     main ="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

## save to file 

dev.copy(png, file="plot1.png", width = 480, height = 480)
dev.off()
