#!/bin/bash
while true
do
	sensors | awk '/Tctl/' | grep -o '[0-9][0-9]\.[0-9]' > /tmp/cputemp
	sleep 0.5s
done
