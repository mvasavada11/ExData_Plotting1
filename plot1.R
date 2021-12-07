#Exploratory Data Analysis: Course 1, Plot 1

#read data, name data, and subset power consumption data
power <- read.table("household_power_consumption 2.txt", skip = 1, sep = ";")
names(power) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
subpower <- subset(power, power$Date=="1/2/2007" | power$Date =="2/2/2007")

#open png device, plot, annotate, and close device
png(filename = "plot1.png", width = 480, height = 480, units = "px")
with(subpower, hist(as.numeric(Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))
title(main = "Global Active Power")
dev.off()