#! /bin/bash
echo y | sudo apt install vsftpd
sudo netstat -nltp | grep 21
sudo systemctl start vsftpd.service

sudo mkdir /home/vsftpd/
sudo touch /home/vsftpd/welcome.txt

sudo useradd -d /home/vsftpd -s /bin/bash uftp
sudo passwd uftp

sudo rm /etc/pam.d/vsftpd
ls /etc/pam.d/vsftpd

sudo usermod -s /sbin/nologin uftp


