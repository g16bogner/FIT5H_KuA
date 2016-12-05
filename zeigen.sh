#!/bin/bash


if [[ -z $1 ]] #erster Parameter es wird geprüft ob ein Paramter übergeben wurde
	then
	echo "Sie haben keinen Ziel-Ordner angeben."	
else 
	topic=$1
	datum=$(date +"%d.%m.%Y %H:%M")
	read -p "Notiz: " notiz
	dir="$HOME/$topic"
	file="$dir/notes.txt"				
	mkdir -p $dir
	printf "$datum: $notiz \n" >> $file 			
fi