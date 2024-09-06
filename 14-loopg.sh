#!bin/bash
for i in {0..10}
do 
    echo " $i "
done

for package in $@
do
    echo " $package "
done
