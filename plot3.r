energyData <- read.csv("./data/household_power_consumption.txt")
dates_times <- paste(energyData[,1],energyData[,2])
x <- strptime(dates_times, "%d/%m/%Y %I:%M:%S %p")
y1 <- energyData$Sub_metering_1
y2 <- energyData$Sub_metering_2
y3 <- energyData$Sub_metering_3
plot(x,y1,type="l",ylab="Energy sub metering",xlab=" ")
lines(x,y2,type="l",ylab="Energy sub metering",xlab=" ",col="red")
lines(x,y3,type="l",ylab="Energy sub metering",xlab=" ",col="blue")
leg.txt <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright",leg.txt,lty=1,col=c(1,2,4),bty="b",cex=.5)
