## Change your currend directory to the data directory
pow.cons <- read.table("household_power_consumption.txt",na="?",skip=66637,nrows=2880,sep=";")
pow.cons.head <- read.table("household_power_consumption.txt",nrows=1,sep=";",stringsAsFactors=FALSE)
pow.cons[,1]=as.Date(pow.cons[,1],format="%d/%m/%Y")

## Construct time
Time <- as.POSIXct(paste(pow.cons[,1],as.character(pow.cons[,2])))

## Make plot
png("plot3.png")
plot(Time,pow.cons[,7],type="l", ylab="Energy sub metering")
lines(Time,pow.cons[,8],col=2)
lines(Time,pow.cons[,9],col=4)
legend("topright",legend=as.character(pow.cons.head[1,7:9]),lwd=1,col=c(1,2,4))
dev.off()
