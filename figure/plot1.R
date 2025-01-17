library("data.table")
setwd("/Users/cindyliu/Desktop/Coursera")
HouseData<- fread("household_power_consumption.txt", na.strings = "?")
SubsetData<- HouseData[which(HouseData$Date=="1/2/2007"|HouseData$Date=="2/2/2007"),]
powerD<-SubsetData
idx<-which(SubsetData$Date=="1/2/2007")
SubsetData[idx,1]<-"Thursday"
SubsetData[1441:2880,1]<-"Friday"
  
#Plot1
hist(SubsetData$Global_active_power,col="red",main="Global Active Power",
     xlab="Global Active Power(kilowatts)")

