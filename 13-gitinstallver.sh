#!/bin/bash
softinstall()
{
    echo " installing mysql server"
} 

verifymysql()
{
    dnf list installed mysql
    if [ $? -ne 0 ]
    then
        echo "mysql is not installed"
        softinstall
    
    else 
        echo " mysql is alredy installed"
    fi  
}


userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "ur nor root user pls have root previlages"
    exit 1
else 
    echo " root logged in"
    echo 
    verifymysql
fi



