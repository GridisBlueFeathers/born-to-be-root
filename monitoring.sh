#!/bin/bash

echo "	#Architecture: $(uname -a)
	#CPU physical: $(lscpu | grep -E "Core\(s\)|Socket" | awk 'BEGIN {cpus = 1} {cpus *= $NF} END {print cpus}')
	#vCPU: $(nproc --all)
	#Memory Usage: $(free --mega | awk '$1 == "Mem:" {printf "%d/%dMB (%.2f%%)\n", $3, $2, $3/$2*100}')
	#Disk Usage: $(df -BMB | grep /dev/mapper | awk '{disk_total += $2} {disk_used += $3} END {printf "%.2f/%.2fGB (%.2f%%)", disk_used/1000, disk_total/1000, disk_used/disk_total*100}')
	#CPU load: $(top -bn2 | grep "Cpu(s)" | awk 'END {printf "%.1f%%", 100 - $8}')
	#Last boot: $(who -b | awk '{printf "%s %s", $3, $4}')
	#LVM use: $(if [ $(grep "/dev/mapper/" /etc/fstab | wc -l) -eq 0 ]; then echo no; else echo yes; fi)
	#TCP connections: $(netstat -an | grep ESTABLISHED | wc -l) ESTABLISHED
	#User log: $(who | wc -l)
	#Network: IP $(hostname -I)($(ip link | grep ether | awk '{printf "%s", $2}'))
"
