#!/bin/bash
# USING ANSI COLORS
DO="\e[0;49;95m"
PINK="\e[0;49;35m"
RED="\e[0;49;31m"
GREEN="\e[0;49;91m"
Gcyan="\e[0;49;33m"
Cyan="\e[0;49;36m"
STOP="\e[0m"
#COLOUR DECLARATION END
#INTRO STARTED
echo -e "${Gcyan}"
echo " "
echo "    ___         __              "
echo "   /   | ____ _/ /_  ____ ______"
echo "  / /| |/ __  / __ \/ __  / ___/"
echo " / ___ / /_/ / / / / /_/ / /    "
echo "/_/  |_\__, /_/ /_/\__,_/_/     "
echo "      /____/                    "
echo -e "${STOP}"
echo -e "${Cyan}"
echo "[*] A Tool for Active, Passive and Permuted Subdomain Enumeration"
echo "[*] Author Mehedi Hasan Remon (@mehedi1194)"
echo -e "${STOP}"
#INTRO ENDS
Checking all requirments
echo " "
echo -e "${Gcyan}[#] Checking all necessary tools installed or not${STOP}"

echo " "
type -P subenum &>/dev/null && echo -e "${GREEN}[*] SubEnum     YES${STOP}" || echo -e "${RED}[*] SubEnum     NO${STOP}"
type -P assetfinder &>/dev/null && echo -e "${GREEN}[*] Assetfinder YES${STOP}" || echo -e "${RED}[*] Assetfinder NO${STOP}"
type -P findomain &>/dev/null && echo -e "${GREEN}[*] Findomain   YES${STOP}" || echo -e "${RED}[*] Findomain   NO${STOP}"
type -P subfinder &>/dev/null && echo -e "${GREEN}[*] Subfinder   YES${STOP}" || echo -e "${RED}[*] Subfinder   NO${STOP}"
type -P amass &>/dev/null && echo -e "${GREEN}[*] Amass       YES${STOP}" || echo -e "${RED}[*] Amass       NO${STOP}"
type -P massdns &>/dev/null && echo -e "${GREEN}[*] MassDns     YES${STOP}" || echo -e "${RED}[*] MassDns     NO${STOP}"
type -P altdns &>/dev/null && echo -e "${GREEN}[*] AltDns      YES${STOP}" || echo -e "${RED}[*] AltDns      NO${STOP}"
echo " "
echo -e "${Gcyan}[*] Check all.txt yourself${STOP}"
