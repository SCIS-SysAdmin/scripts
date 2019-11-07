#!/bin/bash
# 
# Usage: ./fixExamAccounts.sh <machineIP>
#
#
# help: 
# https://superuser.com/questions/608743/top-menu-bar-disappeared-on-all-applications-in-linux-mint-14-xfce
# https://forum.xfce.org/viewtopic.php?id=6042
# https://forums.linuxmint.com/viewtopic.php?f=110&t=71858
# https://superuser.com/questions/1302604/launch-an-application-at-startup

if [[ $# != 1 ]]; then
	echo """
	Invalid arguments!

	Usage: ./fixExamAccounts.sh <machineIP>
	
	Example: ./fixExamAccounts.sh 10.5.0.71

	"""
	exit
fi
# Move startup script to exam account autostart

ssh root@$1 mkdir -p /home/exam/.config/autostart/
rsync -avzhP ./xfwm4.desktop root@$1:/home/exam/.config/autostart/xfwm4.desktop
ssh root@$1 chown -R exam:exam /home/exam/.config/autostart/xfwm4.desktop
