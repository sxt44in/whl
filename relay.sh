#!/bin/bash


#while sleep 1 ; do clear ; ls /dev/ | diff --suppress-common-lines -y - dev_list_1.txt ; done
echo -en  '\xa0\x01\x01\xa2' > /dev/ttyUSB0 # relay 1 
sleep 2
echo -en '\xa0\x01\x00\xa1' > /dev/ttyUSB0 # relay 1 
sleep 2
echo -en '\xa0\x02\x01\xa3' > dd of=/dev/ttyUSB0 # relay 2 
sleep 2 
echo -en '\xa0\x02\x00\xa2' > dd of=/dev/ttyUSB0 # relay 2
sleep 2
