
 

	#load the data for 2007-02-01 and 2007-02-02 only
	data=read.table("household_power_consumption.txt",sep=";",nrows=2*1440,skip=66637,na.strings="?")

	# create datetime vector
	dtime_vector = strptime(paste(data[,1],data[,2]),"%d/%m/%Y %H:%M:%S")

	# plot the temporal dynamics of global active power
	plot(dtime_vector,data[,3],type="l",xlab="",ylab="Global Active Power (kilowatts)")

	# save to file
	dev.copy(png,file="plot2.png",bg="transparent")
	dev.off()

