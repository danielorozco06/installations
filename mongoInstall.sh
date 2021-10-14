#!/usr/bin/env bash

# Update Linux software repository
echo -e "\nsudo apt-get update"
sudo apt-get update

# Install mongodb
echo -e "\nsudo apt install mongodb -y"
sudo apt install mongodb -y

echo -e "\nCheck version installed"
echo -e "\nmongod --version"
mongod --version
