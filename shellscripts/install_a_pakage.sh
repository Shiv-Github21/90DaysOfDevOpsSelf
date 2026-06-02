#!/bin/bash
<<comment 
read -p "enter the name of package : " package
sudo grep 
sudo apt-get update  
sudo apt-get install $package -y

echo " your package has been install how's name is : $package"
comment


package=$1
sudo apt-get update 
sudo apt-get install $package -y

echo "your packages have been install named : $package"
