#!/bin/bash

echo "All variables : $@"
echo "Number of variable passed : $#"
echo "script name : $0"
echo "Current working directory : $PWD"
echo "Home directory of current user : $HOME"
echo "Which user is runing this script : $USER"
echo "Hostname : $HOSTNAME"
echo "PROCESS ID OF THE CURRENT SHELL SCRIPT : $$"
sleep 60 &
echo "Process ID of last background command :$!"

