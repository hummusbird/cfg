#!/bin/bash
while true
do
	cputemp=$(cat /sys/class/thermal/thermal_zone8/temp)
	expr $cputemp / 1000  > /tmp/cputemp
	sleep 0.5s
done
