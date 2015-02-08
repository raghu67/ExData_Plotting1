#Read data into a data frame. Data is assumed to be located in the current directory
power=read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses="character")
#Subset the data to the selected dates.
power2=power[power$Date=="1/2/2007" | power$Date == "2/2/2007",]
#Send the plot to plot3.png file
png("plot3.png")
#Draw the empty plot
plot(strptime(times,"%d/%m/%Y %H:%M:%S"),power2$Global_active_power,type="n",xlab="",ylab="Energy sub metering",ylim=range(0,40))
#Add plot lines for the three sub-metering data
points(strptime(times,"%d/%m/%Y %H:%M:%S"),power2$Sub_metering_1,type="l")
points(strptime(times,"%d/%m/%Y %H:%M:%S"),power2$Sub_metering_2,type="l",col="red")
points(strptime(times,"%d/%m/%Y %H:%M:%S"),power2$Sub_metering_3,type="l",col="blue")
#Add a legend
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))
dev.off()