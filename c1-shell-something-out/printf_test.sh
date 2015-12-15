#!/bin/bash
#should be bash because echo -e is not recognised by sh 
#File name printf_test.sh


#%-5s string substitution with left alignment with width equal to 5 (- represents left alignment, default (nothing) represents right alignment) 
printf "%-5s %-8s %-4s\n" No Name Mark

#%-6.2f float substitution with left alignment (-) with width equal to 4 and .2 represents the number of digits after decimal point
printf "%-5s %-8s %6.2f\n" 1 player1 99.99
printf "%-5s %-8s %-6.2f\n" 2 player2 11.00

#this command below will not be displayed correctly if you do not use /bin/bash to run it
echo -e "\e[1;42mGreen Background \e[0m" 

printf "\e[1;42m%s \e[0m \n" "Green background" #put inside the double quotes to make it a string variable

printf "\e[1;31m%s \e[0m \n"  "This is a red text"

printf "\e[1;33m%s\n\e[0m" "Best pratice: Should use printf for portability"

echo "Enough for printing now"
