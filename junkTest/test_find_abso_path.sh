#!/bin/zsh

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
echo "SCRIPT = ${SCRIPT}"
echo "SCRIPTPATH = ${SCRIPTPATH}"


echo "Second way is better"

pushd `dirname $0`
SCRIPTPATH=`pwd`
popd
echo "SCRIPTPATH = ${SCRIPTPATH}"
