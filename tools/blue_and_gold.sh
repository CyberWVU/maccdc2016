#!/bin/bash

# This script will cycle through random colors for my badge.
badge_ip="10.0.0.2"

while true; do
	sleep .2;
	node badge_conf.js 2 $badge_ip 30 100 250 > /dev/null
	sleep .2;
    node badge_conf.js 2 $badge_ip 255 191 0 > /dev/null
done

