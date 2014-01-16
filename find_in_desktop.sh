#!/bin/bash

application_name=$1
file_list=$2

while read desktop_file
do
	if grep -q $application_name $desktop_file 
	then
		echo "=> $desktop_file"
	fi

done < $file_list
