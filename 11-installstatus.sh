#!bin/bash

UID=$(id -u)

if [ $UID -ne 0 ]
then 
    echo "ur id is not root "
else 
    echo "ur is root "
