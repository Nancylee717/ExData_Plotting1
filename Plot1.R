library(readr)
URL <- "http://archive.ics.uci.edu/ml/index.php"
download.file(URL,destfile = "exdata_data_household_power_consumption.zip")
unzip(zipfile = "exdata_data_household_power_consumption.zip",list=TRUE)
hpc <-read.table("D:/NancyLee/Rpractice/r4ds/Exploratory Data Analysis_week1_Course Project 1/exdata_data_household_power_consumption/household_power_consumption.txt",skip=1, sep=";")
names(hpc) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
hpc_2007 <- hpc[hpc$Date=="1/2/2007"| hpc$Date=="2/2/2007",]
View(hpc_2007)
png("Plot1.png",width=480,height=480)
hist(as.numeric(hpc_2007$Global_active_power),col="red",xlab = "Global Active Power(Kilowatts)",main="Global Active Power")
dev.off()