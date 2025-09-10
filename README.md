Server Stats Script

This script provides detailed system statistics, including:

CPU usage

Memory usage (free vs used, percentage)

Disk usage (total, used, available, percentage)

Top 5 processes by CPU usage

Top 5 processes by Memory usage

📌 Requirements

Linux system (Ubuntu, CentOS, Fedora, etc.)

bash shell

Standard Linux utilities: top, free, df, ps, awk, sed, grep

🚀 How to Run

Clone the repository:

git clone https://github.com/Fardin4135/Devops-basic-projects.git
cd Devops-basic-projects


Open the script in vim (if you want to edit):

vim server-stats.sh


Make the script executable:

chmod +x server-stats.sh


Run the script:

./server-stats.sh

📊 Example Output
Cpu usage is 12.5%
The percentage of memory in use is : 48.6%
The percentage of memory free is : 51.4%
Total Memory Size : 100G
Used Memory       : 45G
Available Memory  : 55G
Usage of Memory   : 45%
The top 5 processes by cpu usage are :
  PID  PPID CMD              %MEM %CPU
  ...
The top 5 processes by memory usage are :
  PID  PPID CMD              %MEM %CPU
  ...

📂 Project Repository

🔗 Project URL: https://roadmap.sh/projects/server-stats
