## Change your currend directory to the data directory
pow.cons <- read.table("household_power_consumption.txt",na="?",skip=66637,nrows=2880,sep=";")
pow.cons.head <- read.table("household_power_consumption.txt",na="?",nrows=1,sep=";")

## Construct time
Time <- as.POSIXct(paste(pow.cons[,1],as.character(pow.cons[,2])))


png("plot4.png")
par(mfrow=c(2,2))
## plot 1
plot(Time,pow.cons[,3],type="l", ylab="Global Active Power (kilowatts)", xlab="")
## plot2
plot(Time,pow.cons[,5],type="l", ylab="Voltage", xlab="datetime")
## plot3
plot(Time,pow.cons[,7],type="l", ylab="Energy sub metering", xlab="")
lines(Time,pow.cons[,8],col=2)
lines(Time,pow.cons[,9],col=4)
legend("topright",legend=as.character(pow.cons.head[1,7:9]),lwd=1,col=c(1,2,4))
## plot2
plot(Time,pow.cons[,4],type="l", ylab=pow.cons.head[1,4], xlab="datetime")
dev.off()
