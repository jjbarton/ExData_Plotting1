# Load helper functions
source("helper.R")

# Load consumption data using helper function
consume.data <- loadConsumptionData()

# Create the chart
with(consume.data, plot(Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

# Copy the chart to a PNG file using helper function
copyToPng("plot2.png")
