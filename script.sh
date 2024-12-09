#!/bin/bash

# Colors for GUI
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# ASCII Art (Welcome Message)
clear
echo -e "${CYAN}"
echo "      █████╗ ██╗   ██╗████████╗██╗  ██╗███╗   ███╗███████╗"
echo "     ██╔══██╗██║   ██║╚══██╔══╝██║  ██║████╗ ████║██╔════╝"
echo "     ███████║██║   ██║   ██║   ███████║██╔████╔██║█████╗  "
echo "     ██╔══██║██║   ██║   ██║   ██╔══██║██║╚██╔╝██║██╔══╝  "
echo "     ██║  ██║╚██████╔╝   ██║   ██║  ██║██║ ╚═╝ ██║███████╗"
echo "     ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝"
echo -e "                            ${WHITE}- By Samir Thakuri${NC}"
echo -e "\n${YELLOW}Verify that you're really my master.${NC}"

# Authentication Password
AUTH_PASSWORD="your_password_here"

# Prompt for Password
echo -ne "${YELLOW}Enter Password: ${NC}"
read -s INPUT_PASSWORD

# Check Password
if [ "$INPUT_PASSWORD" != "$AUTH_PASSWORD" ]; then
    echo -e "\n${RED}Incorrect Password. Exiting...${NC}"
    sleep 2
    exit 1
else
    echo -e "\n${GREEN}Access Granted. Welcome, Samir!${NC}"
    sleep 1
    clear
fi
