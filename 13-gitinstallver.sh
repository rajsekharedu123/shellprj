#!/bin/bash

userid=$(id -u)

if [ $id -ne 0 ]
then 
    echo "ur nor root user pls have root previlages"
    exit 1
else 
    checkfpoint
fi

checkfpoint()
{
    dnf list installed mysql
    if [ $? -ne 0 ]
        echo "mysql is not installed"
        echo
        softinstall
    then 
    else 
        echo " mysql is alredy installed"
    fi  
}

softinstall()
{
    echo " installing mysql server"
} 
