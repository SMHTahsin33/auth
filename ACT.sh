#!/bin/bash
echo -e "                 ___  ___________             "
echo -e "                / _ |/ ___/_  __/             "
echo -e "               / __ / /__  / /                "
echo -e "              /_/ |_\___/ /_/                 "
echo -e "                                              "
echo -e "Active Subdomain Enumeration Script By @SMHTahsin33"
echo -e ""
echo -e "[+] Doing Active Subdomain Enumeration For '$1'"
echo -e ""
#Active Subdomain Enumeration Sources Declaration
Aiodns(){
     aiodnsbrute $1 -w ~/Resources/2m-subdomains.txt -o json -t 1000 -o json -f $1-Active-tmp.txt
}
Filter(){
     grep -o '"domain": "[^"]*' $1-Active-tmp.txt | grep -o '[^"]*$' | tr [:upper:] [:lower:] | sort -u > $1-Active.txt
     rm $1-Active-tmp.txt
}
Httpx(){
     cat $1-Active.txt | httpx -threads 150 > $1-Active-httpx.txt -silent
}
#Active Subdomain Enumeration Sources Declaration Ended
#Worflow Started
echo -e "[/] Using AIODNSBRUTE For Active Subdomain Enumeration"
Aiodns "$1"
echo -e "[/] Filtering out the Results"
Filter "$1"
echo -e "[/] Probing out the Results with HTTPX"
Httpx "$1"
#Workflow Ended
echo -e ""
echo -e "$(wc -l $1-Active.txt | awk '{print $1}') Subdomains Enumerated : "
cat $1-Active.txt
echo -e ""
echo -e "[=] Passive Subdomain Enumeration Done"
