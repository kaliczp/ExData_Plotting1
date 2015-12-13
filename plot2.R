## Change your currend directory to the data directory
pow.cons <- read.table("household_power_consumption.txt",na="?",skip=66637,nrows=2880,sep=";")
pow.cons[,1]=as.Date(pow.cons[,1],format="%d/%m/%Y")

## Construct time
Time <- as.POSIXct(paste(pow.cons[,1],as.character(pow.cons[,2])))

## Make plot
png("plot2.png")
plot(Time,pow.cons[,3],type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
