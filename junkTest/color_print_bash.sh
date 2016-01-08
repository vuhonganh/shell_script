#!/bin/bash
#File: color_print_bash.sh : use bash as the shell, objective is to print color

COLOR_NORM="\e[00m"
COLOR_RED="\e[31m"
COLOR_GREEN="\e[32m"
COLOR_YELLOW="\e[1;33m"
#high intensity cyan
COLOR_CYAN="\e[1;96m"
BACK_RED="\e[41m"

use_printf()
{
    printf ${COLOR_CYAN}"hello cyan\n"${COLOR_NORM}
    
}

printCyanMes()
{
    message=$1
    if [ -n "$message" ]; then
	printf ${BACK_RED}${COLOR_CYAN}"${message}\n"${COLOR_NORM}
	printf ${BACK_RED}${COLOR_YELLOW}"${message}\n"${COLOR_NORM}
	printf ${COLOR_CYAN}"${message}\n"${COLOR_NORM}
	printf ${COLOR_CYAN}"${message}\n"${COLOR_NORM}
    else
	printf "No argument parsed to printCyanMes function\n"
    fi
}

use_echo_zsh()
{
    echo ${COLOR_CYAN}"this text is in cyan only in zsh, does not work for bash or sh when use echo"${COLOR_NORM} 
}

use_printf

var=3

printCyanMes   "onewordconsecutive and sdf ad;flkj adf kj and var = ${var}\n"

use_echo_zsh

