#!/bin/bash

 #call the IpInfo.sh script and 
 #pipe the output to SED deleting the lines that contain Subnet Mark and Broadcast Address.
 
./IpInfo.sh | sed -n '{
 /Subnet Mask:/d
 /Broadcast Address:/d
 p
 }'
