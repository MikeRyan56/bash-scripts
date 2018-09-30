#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################

# Say Hello
echo -e "\e[41mHello! Here are your System Checks\e[0m"
echo
echo -e "\e[41mthe system has been running for  \e[0m"
uptime
echo -e "\e[41mNginx Status Update\e[0m"
systemctl status nginx
#echo -e "\e[41mMySQL Status Update\e[0m"
#systemctl status mysql.service
#echo -e "\e[41mMongoDB Status Update\e[0m"
#systemctl status mongod
echo -e "\e[41mdocker running containers\e[0m"
docker ps
echo -e "\e[41mdocker not running containers\e[0m"
docker ps --filter status=exited
# Update Apt-Get
echo -e "\e[41mApt-Get Update\e[0m"
sudo apt-get update
# Upgrade Apt-Get
echo -e "\e[41mApt-Get Upgrade\e[0m"
sudo apt-get upgrade
echo -e "\e[41mAuto Remove\e[0m"
sudo apt autoremove
#Check for CertBot Renewal
#echo -e "\e[41mCertBot Renewal\e[0m"
#sudo certbot renew
# Get uptime and load again
echo -e "\e[41mUptime\e[0m"
uptime
