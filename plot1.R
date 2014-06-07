data <- read.table("household_power_consumption.txt",sep=";", header=TRUE, na.strings="?")

datos <- rbind(data[data$Date== "1/2/2007",],data[data$Date== "2/2/2007",])

png(filename = "plot1.png",width = 480,height = 480)

hist(datos$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

