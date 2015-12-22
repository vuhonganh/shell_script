#!/bin/bash
#File : function_test.sh : try how to write a function and arguments

function fname() #keyword function is optional
{
    echo print argument 1 and 2 \: $1, $2; 
    echo Printing all arguments as list at once : "$@";
    echo Printing all arguments with star : "$*";
    return 0;
}
echo running fname 1 2 3 4 5   6
fname 1 2 3 4 5   6
