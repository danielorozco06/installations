#!/usr/bin/env bash

echo -e "\nsudo rm -f /etc/wsl.conf"
sudo rm -f /etc/wsl.conf

#Important: This is needed to execute an import .tar like default user, and no like root

echo -e ""
echo '[user]' | sudo tee -a /etc/wsl.conf
echo "default=$USER" | sudo tee -a /etc/wsl.conf
