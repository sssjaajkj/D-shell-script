#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "."  -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
VALIDATE(){
if  [ $1 -ne 0 ]
then 
    echo  -e "$2 ... $R Failure $N"
    exit 1
    else
     echo -e "$2 ... $G Success $N"
 fi
}
if [ $USERID -ne 0 ]

then 
 echo  "plz run this script with root access....."
 exit 1
else
    echo "You are super user"
fi
#echo "All packages : $@"    

for i in $@
do
    echo "package to install: $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0  ]
    then 
         echo "$i already installed .....SKIPPING"
    else

        echo "$i not installed .....install"
fi
done  