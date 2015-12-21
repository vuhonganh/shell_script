#!/bin/bash
#File : password_test.sh

echo "Enter password: ";

#this command will hide what we write in the command prompt (i.e. the command we type will NOT be shown)
stty -echo;

#start typing the password here and no one sees what we type
read password;

#this command will end the hide and start showing what we write in the command prompt (i.e. the command we type will be shown)
stty echo;

echo Password read.;

echo "Re-enter password: ";

stty -echo;
read password2;
stty echo;

if [ $password != $password2 ]; then
    echo "Passwords do not match, typing error, please try again"
else
    echo "Passwords match! Congratulations"
fi


