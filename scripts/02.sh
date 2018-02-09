#!/bin/sh

# 00 4 * * 1 root /home/rlossy/02.sh

apt-get -y update && apt-get -y upgrade >> /var/log/update_script.log
