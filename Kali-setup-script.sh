#!/bin/bash

# make sure we're root
if [ "$HOME" != "/root" ]
then
    printf "Please run while logged in as root or use the sudo command!\n"
    exit 1
fi

echo “what is your cyber name?”
read name
echo “what is your HTB Machine Name?”
read htbmachine
echo “what is your HTB Machine IP Address?”
read htbmachineip
tunip=$(ifconfig | grep destination | awk '{ print $2 }')

myinfo="Your username is $name, your Target Machine name is $htbmachine, your target IP address is $htbmachineip, and your  tunnel IP address is $tunip 
"
echo  "$myinfo" >> myinfo.txt

echo  "You information was saved to a text file in your Desktop called myinfo.txt"


printf '\n#################################################################################\n'
printf '################################ Change your password! ##############################\n'
printf '\n#################################################################################\n'

 sudo passwd
 sudo passwd root

printf '\n#################################################################################\n'
printf '################## Setting Up My Kali for War!!!!!###############################\n'
printf '\n#################################################################################\n'

printf '\n#################################################################################\n'
printf '################## Create new folders for this machine! #########################\n'
printf '\n#################################################################################\n'

 mkdir /opt/Tools
 mkdir Terminator
 mkdir BF
 mkdir Exploits
 mkdir Shared Folder
 mkdir Reports
 mkdir -p VPN/HTB
 sudo mv ~/Desktop/*.ovpn ~/VPN/HTB
 
printf '\n#################################################################################\n'
printf '############################## Create Aliases! ##################################\n'
printf '\n#################################################################################\n'

 chsh -s /bin/bash
 alias ss='searchsploit $1'
 alias ssx='searchsploit -x $1'
 alias l='ls -la'
 alias webup='sudo python -m http.server 80'
 #alias vpn='openvpn /root/pwnshare/VPN/OS-XXXXX-PWK.ovpn'
 #alias rdp='rdesktop -g 85% -u offsec -p PASSWORD_HERE 10.11.14.134 &'

printf '\n#################################################################################\n'
printf '######################### Update and Upgrade the system! #########################\n'
printf '\n#################################################################################\n'

 sudo apt-get clean 
 sudo apt-get update 
 sudo apt-get upgrade -y 
 sudo apt-get dist-upgrade -y

printf '\n#################################################################################\n'
printf '################################ Install Software! ##############################\n'
printf '\n#################################################################################\n'

 sudo apt-get install terminator -y
 sudo apt install gedit -y

printf '\n#################################################################################\n'
printf '######################### Start Metasploit database! #########################\n'
printf '\n#################################################################################\n'

msfdb start

printf '\n============================================================\n'
printf "[+] Done. Don't forget to reboot! :)\n"
printf '============================================================\n\n'

exit

 
 
