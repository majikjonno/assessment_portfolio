#!/bin/bash

read -p 'Type Folder Name : ' folder_name_var #request user input for folder name and save as variable folder_name_var
read -sp 'Type Password : ' password_var #request user input for password and save as variable password_var
echo "username : $folder_name_var" #print folder name on screent
echo $password_var | sha256sum > secret.txt #hash password_var variable using sha256 then output to text file secret.txt
