##plot3

data <- read.table("household_power_consumption.txt",sep=";", 
                   header=TRUE, na.strings="?")

datos <- rbind(data[data$Date== "1/2/2007",],data[data$Date== 
                                                    "2/2/2007",])

datos$Date <- as.Date(datos$Date, format="%d/%m/%Y")

datos$Datetime <- (with(datos,paste(datos$Date,datos$Time,sep=" ")))

datos$Datetime<-strptime(datos$Datetime,"%Y-%m-%d %H:%M:%S")

png(filename = "plot3.png",width = 480,height = 480)

plot(datos$Datetime,datos$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
points(datos$Datetime,datos$Sub_metering_1,col="black",type="l")
points(datos$Datetime,datos$Sub_metering_2,col="red",type="l")
points(datos$Datetime,datos$Sub_metering_3,col="blue",type="l")

legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))


