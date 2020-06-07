#!/bin/bash

# Prompt user for two numbers to perform calculation
echo "Welcome to the calculator"
read -p "Please enter first number: " a 
read -p "Please enter second number: " b 
  
# Present a menu 
echo "Choose calculation :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read cal 
  
# Initiate case statement based on user's choice from the menu and perform the calculation.  Added scale to division incase the result is not a whole number
case $cal in
  1)answer= echo -e "\033[34m"`echo $a + $b | bc`
  ;; 
  2)answer= echo -e "\033[32m"`echo $a - $b | bc` 
  ;; 
  3)answer= echo -e "\033[31m"`echo $a \* $b | bc` 
  ;; 
  4)answer= echo -e "\033[35m"`echo "scale=2; $a / $b" | bc` 
  ;; 
esac
echo "$answer"




