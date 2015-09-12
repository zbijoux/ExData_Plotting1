pow_cons <- read.table( 'household_power_consumption/household_power_consumption.txt',
                        header=TRUE, na.strings = "?",sep = ";")


## Select Data to be plotted
houpow <- subset(pow_cons,pow_cons$Date %in% c("1/2/2007","2/2/2007"))

dateTime <- strptime(paste(houpow[,1]," ",houpow[,2]),"%d/%m/%Y %H:%M:%S")

dataPlot2 <- data.frame(Global_active_power = houpow$Global_active_power,Date_Time=dateTime)

## Plot
with(dataPlot2, plot(Date_Time, Global_active_power, xlab="", ylab = "Global Active Power (kilowatts)", 
                 type="l"))


## Save to PNG
dev.copy(png, file = "plot2.png",width=480, height=480)
dev.off()