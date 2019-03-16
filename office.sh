#!/bin/bash 

echo -e "\e[1;31m Bashing in RED -1  \e[0m\n"

for i in $(seq 1 200)
do	
	echo "-en" '\xa0\x01\x01\xa2' > /dev/ttyUSB0 #relay ON 
	sleep  60
	
	n=$(adb logcat -d | grep "BOOT: sending" | wc -l)
	if [[ $n -ne 4 ]]
	then
		echo "Issue"
		sleep 10 
		adb logcat -d > "logcat-21024-$(date +%s).log"
	else 
		echo "OK on cycle  $i"
	fi 
	
	echo "-en" '\xa0\x01\x00\xa1' > /dev/ttyUSB0 # relay OFF 
	sleep 20
done

 
#echo -en '\xa0\x02\x01\xa3' | dd of=/dev/ttyUSB0 # relay 2 
#sleep 2 
#echo -en '\xa0\x02\x00\xa2' | dd of=/dev/ttyUSB0 # relay 2
#sleep 2


