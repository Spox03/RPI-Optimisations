#!/bin/bash
# Script : pi_temp.sh
# Purpose : Display the ARM CPU and GPU temperature
# ------------------------------------------------------
cpu_temp=$(</sys/class/thermal/thermal_zone0/temp)
echo "$(date) @ $(hostname)"
echo "------------------------------------------------"
echo "GPU $(/opt/vc/bin/vcgencmd measure_temp)"
echo "CPU temp=$((cpu_temp/1000)).$((`echo ${cpu_temp}|cut -c3`))'C"
