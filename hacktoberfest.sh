#!/bin/bash

#Banner
echo -e "                   ___  ___   ____            "
echo -e "                  / _ \/ _ | / __/            "
echo -e "                 / ___/ __ |_\ \              "
echo -e "                /_/  /_/ |_/___/              "
echo -e "                                              "
echo -e "Passive Subdomain Enumeration Script By @SMHTahsin33"
echo -e ""
echo -e "[+] Doing Passive Subdomain Enumeration For '$1'"
echo -e ""

#Passive Subdomain Enumeration Sources Declaration Started
Amass(){
    amass enum --passive -d $1 -o $1-passive-tmp.txt -silent
}
Assetfinder(){
    assetfinder --subs-only $1 | sort -u >> $1-passive-tmp.txt
}
Subfinder(){
    subfinder -d $1 -silent >> $1-passive-tmp.txt
}
Findomain(){
    findomain -t $1 -q >> $1-passive-tmp.txt
    
#WorkFlow Started

if [[ -z "$1" ]]
then
echo "Please Provide Input"
else
echo -e "[/] Running 'amass' on the target"
Amass "$1"
echo -e "[/] Running 'assetfinder' on the target"
Assetfinder "$1"
Subfinder "$1"
echo -e "[/] Running 'findomain' on the target"
Findomain "$1"
echo -e "[/] Running 'crtsh' on the target"

#workflow Ended

echo -e ""
echo -e "$(wc -l $1-Passive.txt | awk '{print $1}') Subdomains Enumerated : "
echo -e "$(wc -l $1-Passive-httpx.txt | awk '{print $1}') Subdomains Probed and are Alive"
echo -e ""
cat $1-Passive.txt
echo -e ""
echo -e "[=] Passive Subdomain Enumeration Done"

##Done
