#! /usr/bin/bash
echo "Enter a name : "
read name 
echo "The entered name is $name"

#for same line input and output
read -p "Enter your name : " name
echo "Your name is $name"

#for multiple input 
echo "Enter the names:"
read name1 name2 name3 
echo "Entered names are $name1 , $name2 ,$name3 "