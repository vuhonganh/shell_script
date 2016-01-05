#!/bin/sh 
#File: test_command_v.sh : command -v option to check if a program is already installed and added to path

#the line below will not run because the exit status is 0 (a good exit status) but in the if condition this is reverse 
[ `command -v apt-get > /dev/null` ] && echo "we use apt-get here"
[ `command -v apt-get > /dev/null` ] || echo "command -v return 0 so the condition failed "

if command -v apt-get > /dev/null; then
    echo "we use apt-get here"
fi
