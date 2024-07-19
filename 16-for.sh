
USERID=$(id -u)

echo "Userid is: $USERID"

if [ $USERID -eq  0 ]
    then
    echo "this root user: $USERID"
    dnf install mysql -y
    else
    echo "this not root user: $USERID"
fi

# for i in {110..20}
# do 
#     echo $i

# done    
