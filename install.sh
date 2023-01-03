#!/bin/bash

#check if the script is run as root
if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

# check port 80 is free or not 
if lsof -Pi :80 -sTCP:LISTEN -t >/dev/null ; then
	echo "Port 80 is already in use"
	exit 1
fi

read -p "Enter your domain name: " domain

# install dependencies

curl -fsSL https://github.com/Github-Aiko/sign-tls/raw/master/sign.sh | bash -s $domain