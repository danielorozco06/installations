#!/usr/bin/env bash

echo -e "\nsudo rm -f /etc/wsl.conf"
sudo rm -f /etc/wsl.conf

echo -e ""
echo '[user]' | sudo tee -a /etc/wsl.conf
echo "default=$USER" | sudo tee -a /etc/wsl.conf
