#! /bin/bash
#File : array_test.sh
#test array and associative array

#normal array using integer index:
echo first way to define a normal_arr=\(1 2 3 4 5\);
echo second way is like explicit normal_arr[0]=9;
normal_arr=(1 2 3 4 5);
normal_arr[0]=9;
echo print first value = \${normal_arr[0]};
echo ${normal_arr[0]};
echo if want to list all the indices, use ! before the name of array;
echo ${!normal_arr[*]};

#associative array need to use declare:
echo to use associative array need to declare it first using\: declare -A name_array;

declare -A asso_array;

echo declare an associative array as this \: asso_array=\([apple]=\'100 dollars\' [orange]=\'150 dollars\'\)
asso_array=([apple]='100 dollars' [orange]='150 dollars')
echo "apple costs ${asso_array[apple]}"
echo use ! to list all indices \${!asso_array[*]} = `echo ${!asso_array[*]}`
echo list all values \${asso_array[*]} = `echo ${asso_array[*]}`
echo Question\: do not know why it is shown \in this reserve order
