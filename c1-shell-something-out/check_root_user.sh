#! /bin/bash
#File check_root_user.sh

if [ $UID != 0 ]; then
    echo Your are NOT root user
else
    echo You are root user
fi
