
 

	#load the data for 2007-02-01 and 2007-02-02 only
	data=read.table("household_power_consumption.txt",sep=";",nrows=2*1440,skip=66637,na.strings="?")


	# create datetime vector
	dtime_vector = strptime(paste(data[,1],data[,2]),"%d/%m/%Y %H:%M:%S")

	# plot energy sub metering
	plot(dtime_vector,data[,7],col="black",type="l",xlab="",ylab="Energy sub metering")
	points(dtime_vector,data[,8],col="red",type="l")
	points(dtime_vector,data[,9],col="blue",type="l")
	# add legend
	legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

	# save to file
	dev.copy(png,file="plot3.png",bg="transparent")
	dev.off()

