#!/bin/bash
 
 read -e -p "Enter Filename" input

 while IFS= read line
 do
    if [ -f "$line" ]; then
        echo -e "$line - this file exists"
    elif [ -d "$line" ]; then
        echo -e "$line - is a directory"
    else
        echo -e "$line - i dont know what that is"
    fi
    
done < "$input"