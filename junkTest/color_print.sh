#!/bin/zsh
#File : color_print.sh : print color messages
autoload -U colors && colors

echo $fg_bold[cyan]"this is a cyan message"  ;
#eval RESET='$reset_color' ; echo ${RESET}
printf $reset_color ""
echo "this line will be in default color"


autoload colors; colors

#FOR PROMPT:
# The variables are wrapped in \%\{\%\}. This should be the case for every
# variable that does not contain space.
#for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
  #eval PR_$COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
  #eval PR_BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
#done


#FOR coloring messages printed by echo or printf
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
  eval PR_$COLOR='$fg_no_bold[${(L)COLOR}]'
  eval PR_BOLD_$COLOR='$fg_bold[${(L)COLOR}]'
done

eval RESET='$reset_color'


echo $PR_GREEN"hello green"
echo $PR_BOLD_GREEN"hello bold green"
echo $PR_RED"hello red"
echo $PR_BOLD_RED"hello bold red"
echo $PR_MAGENTA"hello magenta"
echo $PR_BOLD_MAGENTA"hello bold magenta"
printf $PR_BLUE"hello blue \n"
printf $PR_BOLD_BLUE"hello bold blue \n"
printf $RESET""
echo "hello default color"
