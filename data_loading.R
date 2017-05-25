data_loading <- function (){
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  dir.create("./Exploratory_data")
  setwd("./Exploratory_data")
  File <- download.file(fileURL, destfile = "Power_consuption.zip")  
  unzip("Power_consuption.zip")
  file <- read.table("household_power_consumption.txt", header=T, sep=";")
  file$Date <- as.Date(file$Date, format("%d/%m/%Y"))
  DATA<- file[(file$Date=="2007-02-01")|(file$Date=="2007-02-02"),]
}