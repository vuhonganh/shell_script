#!/bin/bash
#File: flow_control_test.sh : play with if else and test

#if and else is simple and frequent enough to get used to already, now we will play with test

printf "\e[1;33m%s\e[0m \e[1;35m%s\e[0m\n" "[ condition ] && command;" "#command will execute if condition is true";
printf "\e[1;33m%s\e[0m \e[1;35m%s\e[0m\n" "[ condition ] || command;" "#command will execute if condition is false, because if condition is true it will not go further to process command";

i=0;
[ $i -eq 0 ] && echo \$i is equal to 0;

[ $i -eq 1 ] || echo \$i is not equal to 1;

[ $i -eq 0 ] || echo \$i is not equal to 0;

printf "\e[1;33m%s\e[0m \e[1;35m%s\e[0m\n" "[ cond1 -a cond2 ] && command;" "#command will execute if both cond1 and cond2 are true, -a stands for and"
printf "\e[1;33m%s\e[0m \e[1;35m%s\e[0m\n" "[ cond1 -o cond2 ] || command;" "#command will execute if both cond1 and cond2 are false";
j=1;
[ $i -eq 0 -a $j -eq 1 ] && echo \$i is equal to 0 and \$j is equal to 1;
[ $i -eq 1 -o $j -eq 0 ] || echo \$i is not equal to 1 and \$j is not equal to 0;
