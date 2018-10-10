## Read the data
data <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## Subset data for 1/2/2007 and 2/2/2007
dateData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Change columns to correct class
dateTime <- strptime(paste(dateData$Date, dateData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dateData$Global_active_power)

## Plot globalactivepower vs date & time
png("plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()