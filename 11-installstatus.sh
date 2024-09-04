#!bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ur id is not root "
else 
    echo "ur is root "
fi

ls -ltr

if [ $? -ne 0 ]
then 
    echo " command executed with error "
else 
    echo " command executed success" 

fi

ls -cbsdkjdbcjdbcj

if [ $? -ne 0 ]
then 
    echo " command executed with error  ls -cbsdkjdbcjdbcj "
    # exit 1
else 
    echo " command executed success" 

fi

var=10
if [ $var -eq 10 ]
then 
    echo " val is $var "
else 
    echo " val not 10 "
fi
