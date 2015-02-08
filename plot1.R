#Read data into a data frame. Data is assumed to be located in the current directory
power=read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses="character")
#Subset the data to the selected dates.
power2=power[power$Date=="1/2/2007" | power$Date == "2/2/2007",]
#Send the plot to the plot1.png file
png("plot1.png")
#Draw the histogram
hist(as.numeric(power2$Global_active_power),col="red",xlab="Global Active Power (Kilowatts)",main="Global Active Power")
dev.off()