#!/bin/bash
#File : write_multi_lines.sh : a good wat to write multiple lines into a file

FILE=./test.txt
cat > ${FILE} <<EOF
StrictHostKeyChecking=no
Host *
     ControlMaster auto
     ControlPath ~/.ssh/master-%r@%h
     ServerAliveInterval 300
     ServerAliveCountMax 3
EOF
