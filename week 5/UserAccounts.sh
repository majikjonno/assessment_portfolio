#!/bin/bash

#use grep to extract all lines that contain /bin/bash
#use awk to organise the data to print to screen including colours for readability.  Match fields in text files with headings i.e. username as $1 (first field)
grep "/bin/bash" passwd.txt | awk 'BEGIN { 
     FS=":"; 
     
     printf("| \033[34m%-20s\033[0m | \033[34m%-10s\033[0m | \033[34m%-10s\033[0m | \033[34m%-26s\033[0m | \033[34m%-20s\033[0m | \n", "Username", "UserID", "GroupID", "Home", "Shell" );
     print "_____________________________________________________________________________________________________";
 }
 {
     printf("| \033[33m%-20s\033[0m | \033[35m%-10s\033[0m | \033[35m%-10s\033[0m | \033[35m%-26s\033[0m | \033[35m%-20s\033[0m | \n", $1, $3, $4, $6, $7);
 }
 END {
     print("_____________________________________________________________________________________________________");
 }' 