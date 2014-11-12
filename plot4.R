# Load helper functions
source("helper.R")

# Load consumption data using helper function
consume.data <- loadConsumptionData()

# Create the chart
par(mfrow = c(2, 2))

with(consume.data, {
  plot(Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  
  plot(Time, Voltage, type = "l", xlab = "datetime")
  
  plot(Time, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
  points(Time, Sub_metering_1, type = "l")
  points(Time, Sub_metering_2, type = "l", col = "red")
  points(Time, Sub_metering_3, type = "l", col = "blue")
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
  
  plot(Time, Global_reactive_power, type = "l", xlab = "datetime")
})

# Copy the chart to a PNG file using helper function
copyToPng("plot4.png")

