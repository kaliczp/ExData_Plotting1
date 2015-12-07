## Change your currend directory to the data directory
pow.cons <- read.table("household_power_consumption.txt",na="?",skip=66637,nrows=2880,sep=";")
pow.cons.head <- read.table("household_power_consumption.txt",na="?",nrows=1,sep=";")
hist(pow.cons[,3],col=2,main="Global Active Power", xlab="Global Active Power (kilowatts)")
