energyData <- read.csv("./data/household_power_consumption.txt")
dates_times <- paste(energyData[,1],energyData[,2])
y <- energyData$Global_active_power
x <- strptime(dates_times, "%d/%m/%Y %I:%M:%S %p")
png("./data/plot2.png")
plot(x,y,type="l",ylab="Global Active Power (kilowatts)",xlab=" ")
dev.off()