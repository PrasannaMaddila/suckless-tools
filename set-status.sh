#!/bin/bash
#Author: Prasanna
# Updates the status window in the top right of the display
# at each 1 minute interval.

while true; do
	# Setting a format for the date to be displayed
	date_sys=$(date +"(%^a) %d %^b, %I:%M %^P ")

	# Printing the battery status
	# NOTE: Adding the `%` in the `xsetroot` 
	# because we need to process the number to  
	# get the threshold right now.
	battery_cap="$(cat /sys/class/power_supply/BAT1/capacity)"
	
	# Check if the battery is too low. 
	# If low, lock the screen using slock. 	
	threshold=5;  
	if [[ $battery_cap -lt $threshold ]]
	then 
		echo "Battery capacity low. Locking screen."; 
		slock -m "Please plug your laptop in.";  
	fi	

	# Getting battery status as well. 
	# `C` -> Charging. 
	# `D` -> Discharging
	battery_stat="$(cat /sys/class/power_supply/BAT1/status | head -c1)";

	# Printing the ESSID of the currently connected
	# Wi-Fi. Prints None/Any if there is no connected Wi-Fi.
	wifi_stat="$(iwconfig wlo1 | grep -Po "ESSID:\K.*" | sed 's/.*/\U&/;s/"//g;')"; 

	# Passing the variables to show in the status using
	# xsetroot; this command sets the name of the status
	# which dwm then displays on the top status bar.
	xsetroot -name "[ $date_sys ][ $battery_cap% $battery_stat ][ $wifi_stat]"
	
	# making the update process sleep for 30s i.e. 
	# start updating again in 30s. 
	sleep 30s; 

done 

