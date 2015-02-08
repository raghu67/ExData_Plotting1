#Read data into a data frame. Data is assumed to be located in the current directory
power=read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses="character")
#Subset the data to the selected dates.
power2=power[power$Date=="1/2/2007" | power$Date == "2/2/2007",]
#Concat the Date and Time into a single vector
times = paste0(power2$Date," ",power2$Time)
#Send the plot to plot2.png file
png("plot2.png")
#Draw a line plot
plot(strptime(times,"%d/%m/%Y %H:%M:%S"),power2$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()