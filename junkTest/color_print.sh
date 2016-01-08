#!/bin/zsh
#File : color_print.sh : print color messages
autoload -U colors && colors

echo $fg_bold[cyan]"This is a cyan message"  ;
#eval RESET='$reset_color' ; echo ${RESET}
printf $reset_color ""
echo "This line will be in default color"
echo $fg_bold[white]"This line will be in strong white"
echo "This line is kept in strong white too"
