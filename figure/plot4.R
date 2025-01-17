library("data.table")
setwd("/Users/cindyliu/Desktop/Coursera")
HouseData<- fread("household_power_consumption.txt", na.strings = "?")
SubsetData<- HouseData[which(HouseData$Date=="1/2/2007"|HouseData$Date=="2/2/2007"),]
powerD<-SubsetData
idx<-which(SubsetData$Date=="1/2/2007")
SubsetData[idx,1]<-"Thursday"
SubsetData[1441:2880,1]<-"Friday"

par(mfrow=c(2,2))
plot(1:2880,SubsetData$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")

plot(1:2880,SubsetData$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(1:2880,SubsetData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(1:2880,SubsetData$Sub_metering_2,col="red")
lines(1:2880,SubsetData$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1))


plot(1:2880,SubsetData$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
