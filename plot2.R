##plot2

data <- read.table("household_power_consumption.txt",sep=";", 
                   header=TRUE, na.strings="?")

datos <- rbind(data[data$Date== "1/2/2007",],data[data$Date== 
                                                    "2/2/2007",])

datos$Date <- as.Date(datos$Date, format="%d/%m/%Y")

datos$Datetime <- (with(datos,paste(datos$Date,datos$Time,sep=" ")))

datos$Datetime<-strptime(datos$Datetime,"%Y-%m-%d %H:%M:%S")

png(filename = "plot2.png",width = 480,height = 480)

plot(datos$Datetime,datos$Global_active_power,type="l",xlab="",ylab="Global 
Active Power(kilowatts)")
