#!/bin/bash

#Installation of something
#—----------------------------
# If want to install you should have super user access
# so check user’ 
# If super user proced = id is zero 0
# If not super user , i should throuw proper error megs

#HOw you run a command inside shell script and take the output?
# if id is 0 then super user
# else not a super user

#[ ec2-user@ip-172-31-95-217 ~ ]$ id
#uid=1001(ec2-user) gid=1001(ec2-user) groups=1001(ec2-user)

# [ ec2-user@ip-172-31-95-217 ~ ]$ sudo su

# 35.170.187.9 | 172.31.95.217 | t2.micro | null
# [ root@ip-172-31-95-217 /home/ec2-user ]# id 
# uid=0(root) gid=0(root) groups=0(root)
#[ root@ip-172-31-95-217 /home/ec2-user ]# id -u
 #0


USERID=$(id -u)
echo "userid is: :$USERID"
if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access"
    exit 1 # manually exit if error comes
else
echo "You are super usser..."
fi
dnf install mysql -y

if [ $? -ne 0]
then 
echo " Installtion of MYSQL .... Failure "
exit 1
else
echo " MYSQL installed .............. success"

fi

echo "Is script proceeding"