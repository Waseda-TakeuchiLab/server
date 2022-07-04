#! /bin/bash
# Copyright (c) 2022 Shuhei Nitta. All rights reserved.
set -e

# Upgrade packages
apt-get update
apt-get upgrade -y

# Install packages
xargs apt-get install <packages.txt

# Install docker
curl -fsSL https://get.docker.com/ | bash
usermod -aG docker $(whoami)

# Install crontab
cp cronlog.conf /etc/logrotate.d/
chown root:root /etc/logrotate.d/cronlog.conf
if [ ! -d /var/log/cron ]; then
    mkdir /var/log/cron
fi
cp wakealarm /usr/bin/
chmod 544 /usr/bin/wakealarm
chown root:root /usr/bin/wakealarm
crontab crontab.sh

# Reboot
reboot
