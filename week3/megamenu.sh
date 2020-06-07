#!/bin/bash
#start passwordCheck script
./passwordCheck.sh

#create loop that keeps repeating menu after password was correct and error returned 0
while [ $? = 0 ]; do
    echo -e '\n'
    echo -e -n "\e[36mSelect an Option 1-8"
    echo -e '\n'
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
    echo "4. Calculator"
    echo "5. Create Week Folders"
    echo "6. Check Filenames"
    echo "7. Download a file"
    echo -e -n '\e[0;0m'
    echo "8. Exit"

#read the user choice from the menu from 1-8 and use case statement to launch corresponding script
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
                ;;
            4)
                ./calculator.sh
                ;;
            5)  
                ./megafoldermaker.sh
                ;;
            6)
                ./filenames.sh
                ;;
            7)
                ./downloader.sh
                ;;
            
            esac
            
#allow user to exit by breaking the loop if the user's choice from the menu was 8
        if [ $userchoice = "8" ]; then
        break
        fi
    
done