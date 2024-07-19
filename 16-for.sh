
USERID=$(id -u)

echo "Userid is: $USERID"

if [ $USERID -eq  0 ]
    then
    echo "this root user: $USERID"
   
    else
    echo "this not root user: $USERID"
fi

# for i in {110..20}
# do 
#     echo $i

# done    
VALIDATE(){

if  [ $1 -ne 0 ]
then 
    echo "$2 ... Failure"
    exit
    else
     echo "$2 ... Success"
    fi

}
 dnf install mysqle -y
VALIDATE $? "Installation.."