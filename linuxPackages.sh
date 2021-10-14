#!/usr/bin/env bash

# Update Linux software repository
echo -e "\nsudo apt-get update"
sudo apt-get update

echo -e "\n#########################"
echo "Instalar paquetes requeridos"
echo "sudo apt install --no-install-recommends openjdk-11-jdk shellcheck -y"
sudo apt install --no-install-recommends openjdk-11-jdk shellcheck axel unzip zip -y
