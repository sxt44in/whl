#!/bin/bash 

echo -e "\e[1;31m Text in Color \e[0m\n"

echo "-en" '\xa0\x01\x01\xa2' | dd of=/dev/ttyUSB0 # relay 1 
sleep 2
echo "-en" '\xa0\x01\x00\xa1' | dd of=/dev/ttyUSB0 # relay 1 
sleep 2
echo -en '\xa0\x02\x01\xa3' | dd of=/dev/ttyUSB0 # relay 2 
sleep 2 
echo -en '\xa0\x02\x00\xa2' | dd of=/dev/ttyUSB0 # relay 2
sleep 2


