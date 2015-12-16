#! /bin/bash
#File : math_test.sh : test and try some arithmetic operations

num1=4
num2=5


#let form
echo '$num1 =' $num1
echo '$num2 =' $num2
let result=num1+num2;

printf "\e[1;33m%s\n\e[0m" "use let result=num1+num2, this expression need to have NO SPACE AT ALL"
echo '$result' = $result

printf "\e[1;33m%s\n\e[0m" "use let result+=10"
let result+=10;
echo '$result' = $result

echo "assign result to 0 to try new expression"
echo "result=0"
result=0

#[ ] form
result=$[$num1 + num2];
printf "\n\e[1;33m%s\n\e[0m" "use result=\$[\$num1 + num2]; NO SPACE around = equality mark, can have space and use \$ between [ ]"
echo '$result' = $result

echo "assign result to 0 to try new expression"
echo "result=0"
result=0

#(( )) form

result=$((num1 + num2 ))
printf "\n\e[1;33m%s\n\e[0m" "use result=\$((\$num1 + num2)); NO SPACE around = equality mark, can have space and use \$ between (( ))"
echo '$result' = $result

printf "\n\e[1;33m%s\n\e[0m" "use expr to evaluate: result=\`expr 4 + 5\`"
result=`expr 4 + 5`
echo '$result' = $result

printf "\n\e[1;33m%s\n\e[0m" "use \$() instead of \` \` : result=\$( expr 4 + 5 )"
result=$( expr 4 + 5 )
echo '$result' = $result

printf  "\n\e[1;33m%s\n\e[0m" "ALL Above is for integer argument, for float we need to use bc"
printf  "\n\e[1;33m%s\n\e[0m" "need to pass from stdin to bc like this: result=\`echo \"4.4 + 5.5\" | bc\`"
result=`echo "4.4 + 5.5" | bc`
echo '$result' = $result

printf  "\n\e[1;33m%s\n\e[0m" "use ; as delimiter, for ex: to have 2 digit after decimal point with multiplication and division: result=\`echo \"scale=2;4-3\" | bc\`"
result=`echo "scale=2;4/3" | bc`
echo '$result' = $result
printf  "\e[1;33m%s\n\e[0m" "the above scale=2 does not work for explicit addition and substition with explicit numbers like 4.444 + 5.555 will show 9.999"

printf  "\n\e[1;33m%s\n\e[0m" "Base conversion with bc: use:  result=\`echo \"obase=2;9\" | bc"
result=`echo "obase=2;9" | bc`
echo '$result' = $result
