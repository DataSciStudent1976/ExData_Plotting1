
 

	#load the data for 2007-02-01 and 2007-02-02 only
	data=read.table("household_power_consumption.txt",sep=";",nrows=2*1440,skip=66637,na.strings="?")


	# create datetime vector
	dtime_vector = strptime(paste(data[,1],data[,2]),"%d/%m/%Y %H:%M:%S")

	# create subplots
	par(mfcol=c(2,2))

	# plot global active power
	plot(dtime_vector,data[,3],type="l",xlab="",ylab="Global Active Power (kilowatts)")

	# plot energy sub metering
	plot(dtime_vector,data[,7],col="black",type="l",xlab="",ylab="Energy sub metering")
	points(dtime_vector,data[,8],col="red",type="l")
	points(dtime_vector,data[,9],col="blue",type="l")
	# add legend
	legend("topright",bty="n",cex=0.8,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

	# plot voltage
	plot(dtime_vector,data[,5],col="black",type="l",ylab="Voltage",xlab="datetime")
	

	# plot Global_reactive_power
	plot(dtime_vector,data[,4],col="black",type="l",yaxt="n",ylab="Global_reactive_power",xlab="datetime")
	axis(2,seq(0,.5,.1),seq(0,.5,.1))

	# save to file
	dev.copy(png,file="plot4.png",bg="transparent")
	dev.off()


	
