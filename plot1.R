energyData <- read.csv("./data/household_power_consumption.txt")
hist(energyData$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
