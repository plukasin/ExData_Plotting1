## load data
Pit <- read.csv("source2.csv")


## plot on screen 
plot(Pit$Time ,Pit$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
lines(Pit$Time ,Pit$Global_active_power) 

## plot 2 on screen 
plot(Pit$Time ,Pit$Voltage, type="n", ylab="Voltage", xlab="datetime")
lines(Pit$Time ,Pit$Voltage) 

## plot on screen 
plot(Pit$Time ,Pit$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
lines(Pit$Time ,Pit$Global_active_power) 
lines(Pit$Time ,Pit$Sub_metering_1, col ="black") 
lines(Pit$Time ,Pit$Sub_metering_2, col ="red") 
lines(Pit$Time ,Pit$Sub_metering_3, col ="blue") 
legend("topright", pch="-", cex=0.6, col=c("black","red","blue"), 
       legend=names(Pit[8:10]))
## plot 4 on screen 
plot(Pit$Time ,Pit$Global_reactive_power, type="n", ylab="Global_reactive_power", xlab="datetime")
lines(Pit$Time ,Pit$Global_reactive_power) 

## save to file 

dev.copy(png, file="plot4.png", width = 480, height = 480)
dev.off()
