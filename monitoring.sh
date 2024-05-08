#!/bin/bash

echo "	#Architecture: $(uname -a)
	#CPU physical: $(lscpu | grep -E "Core\(s\)|Socket" | awk 'BEGIN {cpus = 1} {cpus *= $NF} END {print cpus}')
	#vCPU: $(nproc --all)
	#Memory Usage: $(free --mega | awk '$1 == "Mem:" {printf "%d/%dMB (%.2f%%)\n", $3, $2, $3/$2*100}')
	#Disk Usage: $(df -BMB | grep /dev/mapper | awk '{disk_total += $2} {disk_used += $3} END {printf "%.2f/%.2fGB (%.2f%%)", disk_used/1000, disk_total/1000, disk_used/disk_total*100}')
	#CPU load: $(vmstat 1 1 | tail -1 | awk '{printf "%d%%\n", 100 - $15}')
	#Last boot: $(echo hi)
"
