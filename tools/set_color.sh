#!/bin/bash
# Script to set the color of a badge.
# Usage ./set_color (blue|red|green|orange|yellow|white|purple|pink)
USAGE='Usage: ./set_color [-h] $COLOR
$COLOR = (blue|red|green|orange|yellow|white|purple|pink)
-h flag will display this message.'
color=$1
rgb=""

if [ "$color" = "-h" ]; then
	echo "$USAGE"
	exit 1
elif [ "$color" = "blue" ]; then 
	rgb="0 0 255"
elif [ "$color" = "red" ]; then
	rgb="255 0 0"
elif [ "$color" = "green" ]; then
	rgb="0 255 0"
elif [ "$color" = "orange" ]; then
	rgb="255 130 0"
elif [ "$color" = "yellow" ]; then
	rgb="255 255 0"
elif [ "$color" = "white" ]; then
	rgb="255 255 255"
elif [ "$color" = "purple" ]; then
	rgb="140 0 255"
elif [ "$color" = "pink" ]; then
	rgb=" 255 0 200"
else
	echo "Invalid color"
	echo "$USAGE"
	echo "Exiting..."
	exit 1
fi
badge_ip="10.0.0.2"

node badge_conf.js 2 $badge_ip $rgb > /dev/null

