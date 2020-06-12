#!/bin/bash


# JShielder v2.4
# Linux Hardening Script


# Tool URL = github.com/xxxjshielder

#Credits to Center for Internet Security CIS

##############################################################################################################

f_banner(){
echo
echo "


██╗░██████╗██████╗░██████╗░  ██████╗░░█████╗░██████╗░
██║██╔════╝██╔══██╗██╔══██╗  ██╔══██╗██╔══██╗██╔══██╗
██║╚█████╗░██║░░██║██████╔╝  ██████╦╝██║░░██║██████╦╝
██║░╚═══██╗██║░░██║██╔═══╝░  ██╔══██╗██║░░██║██╔══██╗
██║██████╔╝██████╔╝██║░░░░░  ██████╦╝╚█████╔╝██████╦╝
╚═╝╚═════╝░╚═════╝░╚═╝░░░░░  ╚═════╝░░╚════╝░╚═════╝░
                                                              
Automated Hardening Script for Linux Servers
Developed By ISDP & Cyber Security"
echo
echo

}

##############################################################################################################

#Check if Running with root user

if [ "$USER" != "root" ]; then
      echo "Permission Denied"
      echo "Can only be run by root"
      exit
else
      clear
      f_banner
fi


menu=""
until [ "$menu" = "10" ]; do

clear
f_banner

echo
echo -e "\e[34m---------------------------------------------------------------------------------------------------------\e[00m"
echo -e "\e[93m[+]\e[00m SELECT YOUR LINUX DISTRIBUTION"
echo -e "\e[34m---------------------------------------------------------------------------------------------------------\e[00m"
echo ""
echo "1. Ubuntu Server 16.04 LTS"
echo "2. Ubuntu Server 18.04 LTS"
echo "3. Linux CentOS 7 (Coming Soon)"
echo "4. Linux CentOS 8 (Coming Soon)"
echo "5. Debian GNU/Linux 9 (Coming Soon)"
echo "6. Debian GNU/Linux 10 (Coming Soon)"
echo "7. Red Hat Linux 7 (Coming Soon)"
echo "8. Red Hat Linux 8 (Coming Soon)"
echo "9. Aliyun Linux (Coming Soon)"
echo "10. Exit"
echo

read menu
case $menu in

1)
cd UbuntuServer_16.04LTS/
chmod +x jshielder.sh
./jshielder.sh
;;

2)
cd UbuntuServer_18.04LTS/
chmod +x jshielder.sh
./jshielder.sh
;;

10)
break
;;

*) ;;

esac
done
