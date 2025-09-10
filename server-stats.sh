#!/usr/bin/bash

# Total cpu usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
	   awk '{print 100 - $1"%"}')

echo "Cpu usage is $cpu_usage"

# Total memory usage (Free vs Used including percentage)

# This will report the percentage of memory in use
used_memo=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
echo "The percentage of memory in use is : $used_memo%"

#This will report the percentage of memory that's free
free_memo=$(free | grep Mem | awk '{print $4/$2 * 100.0}')
echo "The percentage of memory free is : $free_memo%"


#Total disk usage (Free vs Used including percentage)

disk_info=$(df -h --total | grep 'total')
total_size=$(echo $disk_info | awk '{print $2}')
used=$(echo $disk_info | awk '{print $3}')
avail=$(echo $disk_info | awk '{print $4}')
percent=$(echo $disk_info | awk '{print $5}')

echo "Total Memory Size : $total_size"
echo "Used Memory       : $used"
echo "Available Memory  : $avail"
echo "Usage of Memory   : $percent"

# Top 5 processes by CPU usage

Top_cpu=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)
echo "The top 5 processes by cpu usage are :"
echo "$Top_cpu"

# Top 5 processes by memory usage

Top_process=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6)
echo "The top 5 processes by memory usage are :"
echo "$Top_process"


