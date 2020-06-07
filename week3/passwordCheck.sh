#!/bin/bash
echo -e -n "\033[31mEnter Password : "
echo -e -n '\e[0;0m'
read -s password_var2 #request user input for password and save as variable password_var
password_var1_hash=$(cat secret.txt)
echo $password_var2 | sha256sum > password_var2_hash.txt
password_var2_hash=$(cat password_var2_hash.txt)
if [ "$password_var1_hash" = "$password_var2_hash" ]; then
    echo -e '\n'
    echo -e -n "\033[32mAccess Granted"
    echo -e -n '\e[0;0m'
    exit 0
else
    echo -e '\n'
    echo -e -n "\033[31mAccess Denied"
    echo -e '\n'
    exit 1
fi