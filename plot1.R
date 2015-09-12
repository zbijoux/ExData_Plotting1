
### plotting the Histogram ###

with(houpow, hist(Global_active_power, col = "red",main = "Global Active Power",
                    xlab = "Global Active Power (kilowatts)") )

## Save figure to PNG
dev.copy( png, file = "plot1.png",width=480, height=480)

dev.off()