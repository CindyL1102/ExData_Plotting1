library("data.table")
setwd("/Users/cindyliu/Desktop/Coursera")
HouseData<- fread("household_power_consumption.txt", na.strings = "?")
SubsetData<- HouseData[which(HouseData$Date=="1/2/2007"|HouseData$Date=="2/2/2007"),]
powerD<-SubsetData
idx<-which(SubsetData$Date=="1/2/2007")
SubsetData[idx,1]<-"Thursday"
SubsetData[1441:2880,1]<-"Friday"

#plot2
plot(1:2880,SubsetData$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
