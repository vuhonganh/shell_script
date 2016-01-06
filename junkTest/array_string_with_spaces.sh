#!/bin/bash
#File : array_string_with_spaces.sh 

array=( "Development Tool" "X Window System" "What Can I do" );

echo IFS = ${IFS}
defaultIFS=${IFS}
IFS=;
for elem in ${array[@]}; do
    #echo ${elem}; #this will take each word like Development, or Tool, or X etc. in each in a line
    echo "${elem}"
done
IFS=${defaultIFS}
