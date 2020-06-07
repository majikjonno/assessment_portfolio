#!/bin/bash

#prompt user for password and save as password_var2 variable
read -sp 'Type Password : ' password_var2 
#output hash of stored password to use as password_var1_hash variable
password_var1_hash=$(cat secret.txt) 
#create hash of password_var2
echo $password_var2 | sha256sum > password_var2_hash.txt
#set password_var2_hash variable as hash stored in password_var2_hash.txt
password_var2_hash=$(cat password_var2_hash.txt) 

#compare both hash variables to confirm passwords match. Let the user know if their password has matched the stored password then exit script with corresponding error code
if [ "$password_var1_hash" = "$password_var2_hash" ]; then 
    echo "Access Granted"
    exit 0
else
    echo "Access Denied"
    exit 1
fi