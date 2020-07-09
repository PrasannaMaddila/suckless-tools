#!/bin/bash
# Extracts a list of all keybindings defined for DWM 
# from the config.h file. 
awk '/keys\[\] =/,/\};/' config.h  \
	| awk 'NR>2 {print last} {last=$0}' > commands-list.txt; 

# We now need to process the output in `commands-list.txt`. 
# Making the output more readable, for a gentler introduction 
# to DWM keybindings.
sed -i "s/MODKEY/Alt   /;s/|/+/;s/ShiftMask/Shift    /;s/,/ /;" commands-list.txt; 
sed -i "s/XF86XK_/      /; s/XK_*/    /;s/[\{\}]/ /;" commands-list.txt;
sed -i "s/\},*$//" commands-list.txt;
