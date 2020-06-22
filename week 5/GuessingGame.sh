#!/bin/bash
 
 
 #This function will get a value between the 2nd and 3rd arguments
 getNumber()
 {
     read -p "$1: "
     if [ $REPLY = 42 ]; then
        echo "Your guess is Right!"
        else 
            while [[ ("$REPLY" < "42" || "$REPLY" > "42") ]]; do
                if [ $REPLY -gt "42" ]; then
                echo "Too high!"
                read -p "$1: "
                else
                echo "Too low!"
                read -p "$1: "               
                fi
            done
        echo "You finally got it right"
     fi
     
 }
 
 echo "Welcome to the Guessing Game"
 getNumber "please type a number between 1 and 100" 1 100

