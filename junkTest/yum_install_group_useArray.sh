#!/bin/zsh -x
#File : test_install_group.sh

echo IFS = ${IFS};
defaultIFS=${IFS};

IFS="";
array=("X Window System" "Fonts");
for elem in ${array[@]}; do
    #echo "\"${elem}\"";
    #printf %s \"${elem}\"
    #sudo yum groupinstall \"${elem}\"
    #sudo yum groupinstall `echo "${elem}"` #WORK
    sudo yum groupinstall "${elem}" #WORK TOO
done

IFS=${defaultIFS}
