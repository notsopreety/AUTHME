# AUTHME - Termux Authentication Script  
*By [notsopreety](https://github.com/notsopreety)*  

## Introduction  
**AUTHME** is a simple password authentication script for Termux, designed to provide a secure and personalized login experience. It features a custom ASCII welcome screen and password protection, ensuring only authorized users can access the Termux environment.  

---

## Features  
- Custom ASCII Art: Displays "AUTHME" and a personalized signature "- By Samir Thakuri."  
- Password Protection: Prompt for password verification when opening Termux.  
- Simple Setup: Easy-to-follow installation process.  

---

## Installation  

1. **Disable the Default Welcome Message**  
   Remove the default welcome message by deleting the `motd` file:  
   ```bash
   rm /data/data/com.termux/files/usr/etc/motd
   ```

2. **Create or Edit the `.bashrc` File**  
   Open the `.bashrc` file for editing:  
   ```bash
   nano ~/.bashrc
   ```

3. **Paste the Script**  
   Copy and paste the following script into the `.bashrc` file:

   ```bash
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
   echo -e "\n${YELLOW}Verify it's you and enter your password.${NC}"

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
   fi
   ```

   - Replace `your_password_here` with your chosen password.

4. **Save and Close the File**  
   In Nano, press `CTRL + O` to save and `CTRL + X` to exit.

5. **Apply the Changes**  
   Reload the shell by running:  
   ```bash
   source ~/.bashrc
   ```

6. **Test the Setup**  
   Close and reopen Termux to see the customized login prompt.

---

## Expected Behavior  
1. **Login Prompt**: Upon opening Termux, you’ll see:  
   ```
       █████╗ ██╗   ██╗████████╗██╗  ██╗███╗   ███╗███████╗
      ██╔══██╗██║   ██║╚══██╔══╝██║  ██║████╗ ████║██╔════╝
      ███████║██║   ██║   ██║   ███████║██╔████╔██║█████╗  
      ██╔══██║██║   ██║   ██║   ██╔══██║██║╚██╔╝██║██╔══╝  
      ██║  ██║╚██████╔╝   ██║   ██║  ██║██║ ╚═╝ ██║███████╗
      ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝
                            - By Samir Thakuri

   Verify that you're really my master.
   Enter Password:
   ```

2. **Correct Password**: Displays:
   ```
   Access Granted. Welcome, Samir!
   ```

3. **Incorrect Password**: Exits Termux with:
   ```
   Incorrect Password. Exiting...
   ```

---

## Contributing  
Feel free to fork this repository, create issues, or submit pull requests if you have improvements or suggestions.  

---

## License  
This project is open-source and free to use.  
