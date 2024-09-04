#!bin/bash

id=$(id -u)

if [ $id -ne 0 ]
then 
    echo " ur not a root user "
    exit 1
else 
    echo " ur a root user "
    sftinstall
fi

sftinstall()
{
    echo " installing mysql software "
    dnf install mysql
}
