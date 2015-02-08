## load data
Pit <- read.csv("source2.csv")
## plot on screen 
plot(Pit$Time ,Pit$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
lines(Pit$Time ,Pit$Global_active_power) 

## save to file 

dev.copy(png, file="plot2.png", width = 480, height = 480)
dev.off()

