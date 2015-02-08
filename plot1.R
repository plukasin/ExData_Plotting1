## load data
Pit <- read.csv("source2.csv")
## plot on screen 
hist(Pit$Global_active_power, col="red", main ="Global Active Power", xlab="Global Active Power (kilowatts)")

## save to file 

dev.copy(png, file="plot1.png", width = 480, height = 480)
dev.off()
