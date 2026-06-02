#!/bin/bash

<<comment
for package in nginx docker.io curl wget shiv ; do
     dpkg -s "$package" >/dev/null 2>&1
           if [[ $? -eq 0 ]] ; then
		   echo "this package "$package" is already installed in ur local"
	   else echo " "$package"  is not install.. Let's Install it..Installing..."
		     sudo apt-get install "$package" -y
	   fi	    
	   done
comment

#this is telling u that run ur script as a root user 
if [[ $EUID -ne 0 ]] ; then 
	echo "Please Run Your script as a root"
	exit 1
fi
#if not root user script stops here and no packages get install
 for package in nginx docker.io shiv vim ; do
	 if dpkg -s "$package" >/dev/null 2>&1 ;  then
		 echo "this is installed "$package""
             else echo "not installed "$package""
           sudo apt-get install "$package" -y
    fi
done    

