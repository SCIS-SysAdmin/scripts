#!/bin/bash
# 
# Usage: ./fixUserAccounts.sh <enrollNo> <groupDir> <group>
#
#

if [[ $# != 2 ]]; then
	echo """
	Invalid arguments!

	Usage: ./fixUserAccounts <enrollNo> <course Directory>
	
	Example: ./fixUserAccounts.sh 18mcmi04 mtech

	Course Directories: faculty  imtech  mca  mtech  phd  sip

	"""
	exit
fi
# Backup user config
mv /users/$2/$1/.config/xfce4/ /users/$2/$1/.config/_xfce4/
# Move new config
cp -r xfce4 /users/$2/$1/.config/

#chown -R $1:$3 /users/$2/$1/.config/xfce4
chown -R $1:$(id -gn $1) /users/$2/$1/.config/xfce4
