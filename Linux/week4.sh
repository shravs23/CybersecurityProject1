#!/bin/bash

sudo chmod 600 /etc/shadow
sudo chmod 600 /etc/shadow
Sudo adduser sam
Sudo adduser joe
Sudo adduser amy
Sudo adduser sara
Sudo adduser admin
sudo usermod -aG sudo admin
sudo addgroup engineers
Sudo usermod -aG engineers sam
Sudo usermod -aG engineers joe
Sudo usermod -aG engineers amy
Sudo usermod -aG engineers sara
sudo mkdir /home/engineers
sudo chown :engineers /home/engineers
