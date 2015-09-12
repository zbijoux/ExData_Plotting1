loaddata<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(loaddata,"household_power_consumption.zip")
unzip("household_power_consumption.zip", exdir = "household_power_consumption")

list.files("household_power_consumption")

pow_cons <- read.table( 'household_power_consumption/household_power_consumption.txt', header=TRUE, na.strings = "?",sep = ";")

houpow <- subset(pow_cons,pow_cons$Date %in% c("1/2/2007","2/2/2007"))

