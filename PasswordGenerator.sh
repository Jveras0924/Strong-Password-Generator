#!/bin/bash

#Simple Password Generator 

echo "This is a Password Generator and it will generate 5 passwords of a user specifed length"

read -p "Enter the lenght of the password you want to generate: " PASS_LEN

for pass in $(seq 1 5);
do 
	openssl rand -base64 48 | cut -c1-$PASS_LEN #this uses openssl's cryptography to create the password, these passwords contain upper and lower case letters, numbers, and symbols
done	
