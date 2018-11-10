#!/bin/bash


while read line
do
	echo $line
	if [[ ${line} == "All works finished!" ]];then  #condition judgement,need　double square brackets
		mkdir "check"  #make dir
		exit
	fi	
#	sleep 1
done < $1  #command　line　input　the file
