
 
	#load the data for 2007-02-01 and 2007-02-02 only
	data=read.table("household_power_consumption.txt",sep=";",nrows=2*1440,skip=66637,na.strings="?")

	# plot the histogram of global active power
	hist(data[,3],col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")

	# save to file
	dev.copy(png,file="plot1.png",bg="transparent")
	dev.off()

