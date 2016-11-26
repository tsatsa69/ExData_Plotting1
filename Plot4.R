dt<-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,na.strings = "?")
dt1<-subset(dt,as.Date(Date,format("%d/%m/%Y"))=="2007-02-01" | as.Date(Date,format("%d/%m/%Y"))=="2007-02-02")
rm(dt)
 png("plot4.png", width=480, height=480)




par(mfrow=c(2,2))

plot(strptime(paste(dt1$Date, dt1$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(dt1$Global_active_power),
     type="l",
     xlab="",
     ylab="Global Active Power")

plot(strptime(paste(dt1$Date, dt1$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(dt1$Voltage),
     type="l",
     xlab="datetime",
     ylab="Voltage")
 
plot(strptime(paste(dt1$Date, dt1$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(dt1$Sub_metering_1), type="l", col="black",
           xlab="", ylab="Energy sub metering")
lines(strptime(paste(dt1$Date, dt1$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(dt1$Sub_metering_2), col="red")
lines(strptime(paste(dt1$Date, dt1$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(dt1$Sub_metering_3), col="blue")
      
legend("topright",
             col=c("black", "red", "blue"),
             c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
             lty=1) 
      
plot(strptime(paste(dt1$Date, dt1$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(dt1$Global_reactive_power),
           type="l",
           xlab="datetime",
           ylab="Global_reactive_power")
      

dev.off()