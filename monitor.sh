#######################################
# Author  : Sreedev P
# Date    : 17-10-2026
# Version : V1
# Task    : Monitor EC2 System Resources
#######################################

set -e

echo "#######################################"
echo "       EC2 SYSTEM MONITORING"
echo "#######################################"

echo
echo "This is the list of Running Services"
sudo systemctl list-units --type=service --state=running

echo
echo "This is the CPU Usage of EC2 Instance"
top -bn1 | grep "Cpu(s)"

echo
echo "This is the Memory Usage of EC2 Instance"
free -h

echo
echo "This is the Disk Usage of EC2 Instance"
df -h

echo
echo "#######################################"
echo "       MONITORING COMPLETED"
echo "#######################################"
