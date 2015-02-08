## load data
Pit <- read.csv("source2.csv")
## plot on screen 
plot(Pit$Time ,Pit$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
lines(Pit$Time ,Pit$Global_active_power) 
lines(Pit$Time ,Pit$Sub_metering_1, col ="black") 
lines(Pit$Time ,Pit$Sub_metering_2, col ="red") 
lines(Pit$Time ,Pit$Sub_metering_3, col ="blue") 
legend("topright", pch="-", col=c("black","red","blue"), 
       legend=names(Pit[8:10]))

## save to file 

dev.copy(png, file="plot3.png", width = 480, height = 480)
dev.off()


