
USERID=$(id -u)

echo "Userid is: $USERID"

R="\e[31m"
G="\e[32m"
N="\e[0m"

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
    echo -e "$2 ... $R Failure $N"
    exit
    else
     echo -e "$2 ... $G Success $N"
    fi

}
 dnf install mysqle -y
VALIDATE $? "Installation.."