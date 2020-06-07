#!/bin/bash

while [[ $userprompt != "exit" ]]; do
    read -p 'Please enter URL of file to download or type "exit" to quit: ' userprompt
    if [ $userprompt = "exit" ]; then
        break
    fi
    read -p "Please enter destination folder: " target
    wget -O "$target" $userprompt
 
    
 done