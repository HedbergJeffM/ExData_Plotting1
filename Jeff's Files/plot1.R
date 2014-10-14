data<-read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
data2<-subset(data, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data2$Global_active_power, col="#FF2400", xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()