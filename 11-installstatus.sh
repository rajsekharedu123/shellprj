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
    
