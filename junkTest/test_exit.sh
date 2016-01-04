#!/bin/bash

#File: test_exit.sh
PACKAGE_MANAGER="yum"

#Verify the package manager
if command -v apt-get > /dev/null; then
    PACKAGE_MANAGER="apt-get"
    echo "We will use apt-get as package manager"
else
    echo "We will use ${PACKAGE_MANAGER} as package manager"
fi
#export PACKAGE_MANAGER;

echo "[Updating] package list"
[ $? -eq 0 ] || `echo "FAILED TO UPDATE package list ................."; exit 1 `
[ ${PACKAGE_MANAGER} == "apt-get" ] && sudo ${PACKAGE_MANAGER} -y update 
[ $? -eq 0 ] || `echo "FAILED TO UPDATE package list ................."; exit 1 `
echo "[Done] Successfully updating package list!"

/bin/bash /home/vagrant/workspace/shell_script/junkTest/read_exportVar_fromPreviousFile.sh
exit 0
