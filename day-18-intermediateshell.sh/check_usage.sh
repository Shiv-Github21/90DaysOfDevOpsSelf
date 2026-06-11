#!/bin/bash

check_disk_free(){
	space=$(df -h)
	echo "The amount of disk free is : "
	 echo "$space"
}
check_storage_free(){
	echo "The free space is : "
	free -h
}

check_disk_free
check_storage_free

