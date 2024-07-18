#!/bin/bash

USERID=$(id -u)
echo "userid is: :$USERID"

# fun declaration
VALIDATE(){

if  [ $1 -ne 0 ]
then 
    echo "$2 ... Failure"
    exit
    else
     echo "$2 ... Success"
    fi

}

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access"
    exit 1 # manually exit if error comes
else
echo "You are super user..."
fi
dnf install mysql -y

VALIDATE $? "Installing mysql"

dnf install git -y
VALIDATE $? "install git"

dnf install gift -y
VALIDATE $? "Installing Git"



