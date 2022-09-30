#!/bin/bash

# make sure we're root
if [ "$HOME" != "/root" ]
then
    printf "Please run while logged in as root or use the sudo command!\n"
    exit 1
fi

printf '\n#################################################################################\n'
printf '################################ Change your password! ##############################\n'
printf '\n#################################################################################\n'

passwd
sudo passwd root

printf '\n#################################################################################\n'
printf '################## Setting Up My Kali for War!!!!!###############################\n'
printf '\n#################################################################################\n'



printf '\n#################################################################################\n'
printf '################## Create new folders for this machine! #########################\n'
printf '\n#################################################################################\n'

 #mkdir /opt/Tools
 mkdir Terminator
 mkdir BF
 mkdir Exploits
 mkdir Shared Folder
 mkdir Reports
 
printf '\n#################################################################################\n'
printf '############################## Create Aliases! ##################################\n'
printf '\n#################################################################################\n'

 alias ss='searchsploit $1'
 alias ssx='searchsploit -x $1'
 alias l='ls -la'
 alias webup='sudo python -m http.server 80'
 #alias vpn='openvpn /root/pwnshare/VPN/OS-XXXXX-PWK.ovpn'
 #alias rdp='rdesktop -g 85% -u offsec -p PASSWORD_HERE 10.11.14.134 &'
 
 
printf '\n#################################################################################\n'
printf '################################ Install Software! ##############################\n'
printf '\n#################################################################################\n'

sudo apt-get install terminator
sudo apt install gedit

printf '\n#################################################################################\n'
printf '######################### Update and Upgrade the system! #########################\n'
printf '\n#################################################################################\n'

 sudo apt-get clean 
 sudo apt-get update 
 sudo apt-get upgrade -y 
 sudo apt-get dist-upgrade -y

printf '\n#################################################################################\n'
printf '######################### Start Metasploit database! #########################\n'
printf '\n#################################################################################\n'


printf '\n============================================================\n'
printf "[+] Done. Don't forget to reboot! :)\n"
printf '============================================================\n\n'
 
 
