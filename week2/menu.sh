#!/bin/bash
./passwordCheck.sh
if [ $? = 0 ]; then
    echo "Please type in 1-3 for your selection"
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
    read userchoice
    case $userchoice in
        1)
            ./foldermaker.sh
            ;;
        2)
            ./foldercopier.sh
            ;;
        3)
            ./setPassword.sh

    esac
else
    echo "Goodbye"
fi




