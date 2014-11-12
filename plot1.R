# Load helper functions
source("helper.R")

# Load consumption data using helper function
consume.data <- loadConsumptionData()

# Create the chart
hist(consume.data$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")

# Copy the chart to a PNG file using helper function
copyToPng("plot1.png")
