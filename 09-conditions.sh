#!/bin/bash
num=$1
if [$num -gt 10]
then
   echo " Gien number is $num is gt 10"
else
   echo " Gien number is $num is lt 10"
fi

# -gt -lt -eq -ge -le