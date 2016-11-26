dt<-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,na.strings = "?")
dt1<-subset(dt,as.Date(Date,format("%d/%m/%Y"))=="2007-02-01" | as.Date(Date,format("%d/%m/%Y"))=="2007-02-02")
rm(dt)
 png("plot2.png", width=480, height=480)

 plot(strptime(paste(dt1$Date, dt1$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(dt1$Global_active_power),
           type="l",
            xlab="",
            ylab="Global Active Power (kilowatts)")

dev.off()