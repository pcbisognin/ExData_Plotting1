plot4 <- function() {
  voltage<-DATA$Voltage
  globalReactivePower <- DATA$Global_reactive_power
  par(mfrow=c(2,2))
  plot(g, global_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)")
  plot(g,voltage,type="l")
  plot(g,DATA$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub mettering")
  lines(g, DATA$Sub_metering_2, col="red")
  lines(g,DATA$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1),
         cex=.4)
  plot(g,globalReactivePower,type="l")
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
}