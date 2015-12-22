#!/bin/bash
#File: flow_control_test.sh : play with if else and test

#if and else is simple and frequent enough to get used to already, now we will play with test

printf "\e[1;33m%s\e[0m \e[1;35m%s\e[0m\n" "[ condition ] && command;" "#command will execute if condition is true";
printf "\e[1;33m%s\e[0m \e[1;35m%s\e[0m\n" "[ condition ] || command;" "#command will execute if condition is false, because if condition is true it will not go further to process command";

i=0;
[ $i -eq 0 ] && echo \$i is equal 0;

[ $i -eq 1 ] || echo \$i is not equal 1;

[ $i -eq 0 ] || echo \$i is not equal 0;
