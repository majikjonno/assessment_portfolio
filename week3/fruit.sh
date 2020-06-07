#!/bin/bash
#define fruit variable
fruits='Apple 
        Mango 
        Strawberry
        Orange
        Banana'
#execute for loop
for fruittype in $fruits
do
echo "FRUIT: " $fruittype
done