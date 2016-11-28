#!/bin/bash

read -p "Geben Sie die 1. Zahl ein:" zahl1

if [[ `echo "$zahl1" | grep [[:digit:]]` ]]
	then
	echo "Die 1. Zahl ist eine $zahl1"

else
	echo "Falsche Eingabe"
fi

ergebnis=zahl1
zaehler=1

read -p "Geben Sie eine weitere Zahl ein, oder beenden Sie mit exit: " eingabe

while [[ $eingabe -ne "exit" ]]
do
	((zaehler ++))
	ergebnis=$((ergebnis+eingabe))
	echo "Bisher wurden $zaehler Zahlen eingegeben. Das Zwischenergebnis lautet: $ergebnis."
	
	read -p "Geben Sie eine weitere Zahl ein, oder beenden Sie mit exit. " eingabe
	
	if [[ ! `echo "$eingabe" | grep [[:digit:]]` ]]
	then
		echo "Falsche Eingabe!"
	fi
done


	echo "Das Endergebnis lautet: $ergebnis"	
