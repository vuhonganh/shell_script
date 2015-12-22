#!/bin/bash
#File: loop_test.sh : try several loop syntaxes 
#for loop can take the form of a for loop in C, note that we need (( )) to evaluate the command inside
for ((i=1; i < 6; i++))
{
    [ $i == 1 ] && printf "\n\e[1;33m%s \e[0m\n" "using for loop in C-style";
    echo $i;
}

for i in {1..5};
do
    [ $i == 1 ] && printf "\n\e[1;33m%s \e[0m\n" "using for loop: in, do, done";
    echo $i;
done

i=1;
while [ $i -lt 6 ];
do
    [ $i == 1 ] && printf "\n\e[1;33m%s \e[0m\n" "using while loop: condition, do, done, REMEMBER TO USE -le instead of < " ;
    echo $i;
    let i++;
done

printf "\n\e[1;33m%s \e[0m\n" "using {x..y} to generate sequence";
#generate a sequence is easy:
echo echo \{1..5\} \: `echo {1..5}` ;
echo echo \{a..f\} \: `echo {a..f}`;
echo echo \{H..h\} \: `echo {H..h}`;
echo
printf "\e[1;33m%s \e[0m" "use printf: " `printf "%s " {1..5}`;
echo
