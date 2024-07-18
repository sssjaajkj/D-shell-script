#!/bin/bash

USERID=$(id -u)
echo "userid is: :$USERID"

# fun declaration
VALIDATE(){
 echo "Exit status :$1"
 echo "What are you doing: $2"

}
if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access"
    exit 1 # manually exit if error comes
else
echo "You are super usser..."
fi
dnf install mysql -y

VALIDATE $? "Installing mysql"

dnf install git -y
VALIDATE $? "Installing Git"

# if [ $? -ne 0 ] # previous command is succes or not $?
# then 
#     echo " Installtion of MYSQL .... Failure "
# exit 1 # manually exit if error comes
# else
# echo " MYSQL installed .............. success"

# fi

# dnf install git -y

# if [ $? -ne 0 ]
#  then 
#   echo "Insatllation of git .....Failure"
#   exit 1
#   else
#   echo "Insatllation of git .....Success"
#   fi
#echo "Is script proceeding"