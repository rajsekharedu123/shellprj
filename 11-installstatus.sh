#!bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ur id is not root "
else 
    echo "ur is root "
fi
