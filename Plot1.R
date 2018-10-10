## Read the data
data <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## Subset data for 1/2/2007 and 2/2/2007
dateData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


## Change columns to correct class
globalActivePower <- as.numeric(dateData$Global_active_power)

## Plot histogram of global active power for those 2 days
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()