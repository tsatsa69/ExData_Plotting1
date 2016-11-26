dt<-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE,na.strings ="?" )
dt1<-subset(dt,as.Date(Date,format("%d/%m/%Y"))=="2007-02-01" | as.Date(Date,format("%d/%m/%Y"))=="2007-02-02")
rm(dt)
 png("plot1.png", width=480, height=480)

hist(as.numeric(dt1$Global_active_power),
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")

dev.off()