plot1 <- function () { 

global_power <- as.numeric(DATA$Global_active_power)
hist(global_power, main=paste("Global Active Power"), col="blue",xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
}
