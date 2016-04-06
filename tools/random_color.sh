#!/bin/bash

# This script will cycle through random colors for my badge.
badge_ip="10.0.0.2"

while true; do

	color_1=$(shuf -i 1-150 -n 1)
	color_2=$(shuf -i 1-150 -n 1)
	color_3=$(shuf -i 1-150 -n 1)
	node badge_conf.js 2 $badge_ip $color_1 $color_2 $color_3 > /dev/null
	sleep 1;
done

