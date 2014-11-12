#setwd("~/Documents/Programming/courses/coursera//data_science/exploratory/ExData_Plotting1/")

path <- "../household_power_consumption.txt"

loadConsumptionData <- function(consumption.path = "../household_power_consumption.txt")
{
  consume.all <- read.table(path, header = TRUE, sep = ";", na.strings = "?")
  
  consume.all$Time <- strptime(paste(consume.all$Date, consume.all$Time), "%d/%m/%Y %H:%M:%S")  
  consume.all$Date <- as.Date(consume.all$Date, format = "%d/%m/%Y")
  
  consume <- consume.all[consume.all$Date %in% as.Date(c("2007-02-01", "2007-02-02")),]
  
  return(consume)
}

copyToPng <- function(file.name)
{
  dev.copy(png, file = file.name)
  dev.off()
}

