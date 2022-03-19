#!/bin/bash

echo " Findsub is a Tool That Find Subdomains Automation SCript By NeuRosis(Aryan)"


if [ -z "$1" ]
then
        echo "Bakarhenan: ./Findsub.sh <DOMAIN>"
        exit 1
fi

printf "\n----- Subfinder -----\n\n" > results

echo "Running Subfinder..."
subfinder -d $1 >> results

echo ""

printf "\n----- Assetfinder -----\n\n" > results1

echo "Running Assetfinder..."
assetfinder -subs-only $1 >> results1

echo ""

printf "\n----- Amass -----\n\n" > results2

echo "Running Amass..."
amass enum -d $1 >> results2


echo ""

cat results results1 results2 >> AllSubdomains | sort -u AllSubdomains | rm results results1 results2


echo ""
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "Anjamy Kotayt Hallgirawa Law Filada Ba Nawy>>>>>>AllSubdomains...."


