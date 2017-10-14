
#get data and subset data
housedata <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
house_a_data <-rbind(housedata[housedata$Date=="1/2/2007",],housedata[housedata$Date=="2/2/2007",])

#shape the data
house_a_data$Date <- as.Date(house_a_data$Date,"%d/%m/%Y")
house_a_data<-cbind(house_a_data, "DateTime" = as.POSIXct(paste(house_a_data$Date, house_a_data$Time)))


#plot2
png("plot2.png", width = 350, height = 350)
plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
dev.off()