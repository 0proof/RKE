#!/bin/bash
echo 'PermitRootLogin no' >> /etc/ssh/sshd_config
service ssh restart
sudo service sendmail stop #Stop sendmail for now, will see if really needed for Fail2ban.
sudo systemctl disable sendmail
#systemctl stop sendmail
apt-mark hold docker-ce #Hold current docker version
# apt -y remove unattended-upgrades #Disable unattended upgrades #Ansible remove does the job, but does GCE adds it auto?
