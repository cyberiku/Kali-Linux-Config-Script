# Kali Linux Initial Setup Script

###This script will prepare you kali linux for pentesting on HTB.

## Pre-Requisite. 
#You need to have an Internet Connection. 
#You need to connect to your HTB account and download, and connect your vpn tunnel. 
#You need to run this script as Root.

##How to use get the script and run the script. 
# Use this command to download the script. "git clone https://github.com/cyberiku/Kali-Linux-Config-Script.git"
# Navigate to the downloaded folder by typing "cd Kali-Linux-Config-Script"
# Change the permission to execute by "chmod +x chmod +x Kali-setup-script.sh"
# Execute the script by typing "./Kali-setup-script.sh"


## Everything we are doing with the script. 

1. Makes sure you are root.

2. Collect your information to display later.
	1. Collect your Username. <-----You will get this from your login information.
	2. Collect your HTB Target IP Address. <----- You will get this once you go into the "Machines"
	3. Collect your HTP Target Name.<----- You will get this once you go into the "Machines"
	3. Collect your vpn Tunnel IP Address.<----- We will print this from your ifconfig. This is why you need to be running your htb vpn. 


3. Creating Folders 
	1. Create your Terminator Folder to use it with Termiantor.
	2. Create a BF for Buffer Overflow files
	3. Create a Reports folder to add the report for the machines.
	4. Create an Exploits folder for Exploit files. 
	5. Create a Shared Folder to share files with teh host. 
	6. Create a VPN folder and inside create a HTB-VPN Folder. 

4. Create you most uselful aliases
	1. Create the  alias for searchploit 
	2. Create the ssx alias for adding option to searchsploit
	3. Create your l alias for your ls -la
	4. Create your webup to setup your python http server on port 80
	5. Create your vpn alias to setup your vpn connection. 
	6. Create your rdp alias to connect to your rdp machine  case you have one in the network. 

5. Update and Upgrade your system. 
	1. clean your upgrade
	2. update your system 
	3. upgrade your system 
	4. upgrade your distribution 
	
6. Install Software!
	1. Install terminator 
	2. Install gedit
	
7. Exit the script.	
	


<!---
cyberiku/cyberiku is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
