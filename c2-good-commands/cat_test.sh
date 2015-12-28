#!/bin/bash

printf "\e[1;33m%s\n\e[0m[" "cat can read from stdin by using argument - as the filename for stdin"
ls -l | cat - 
