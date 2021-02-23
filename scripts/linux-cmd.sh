#!/bin/bash
echo "Welcome $USER on $HOSTNAME"
echo "##############################################################"

# To List files in bash terminal
echo "###############################################################"

LSTOFFILES=`ls`
HNAME=`hostname`
FREERAM=`free -m | grep Mem | awk '{print $4}'`
#FREERAMM=$(free -m | grep Mem | awk '{print $5}')
ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
CPUCORES=$(cat /proc/cpuinfo | grep 'cpu cores' | awk '{print $4}')

echo "##########################################################"
echo "Available free RAM is $FREERAM MB"
echo "##########################################################"
echo "Current Load Average $LOAD"
echo "##########################################################"
echo "Free Root Partiotion size is $ROOTFREE"
echo "##########################################################"
echo "Available CPU cores in Linux Machine $CPUCORES"

 







