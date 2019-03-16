#!/bin/bash 

echo -e "\e[1;31m Bash shell: Test for button hit over adb  \e[0m\n"

for i in $(seq 1 50)
do	
	echo $i  
	adb shell input tap 1000 175
	usleep 1000 
	

done

 


