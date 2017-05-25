plot2 <- function() {
  
  g<-as.POSIXct(paste(DATA$Date, DATA$Time)) #cola a data e horário juntos,e seta como número - classe POSIXct, para poder fazer operações
  plot(g, global_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)") #type="l" é linha
  dev.copy(png, file="plot2.png", width=480, height=480) 
  dev.off()
  
}
  