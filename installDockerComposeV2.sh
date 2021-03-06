#!/usr/bin/env bash

echo -e "\nTo install Docker Compose for all users on your system"
composePath="/usr/local/lib/docker/cli-plugins"

echo -e "sudo mkdir -p $composePath"
sudo mkdir -p "$composePath"

echo -e "\nsudo curl -SL https://github.com/docker/compose/releases/download/v2.0.1/docker-compose-linux-x86_64 -o $composePath/docker-compose"
sudo curl -SL https://github.com/docker/compose/releases/download/v2.0.1/docker-compose-linux-x86_64 -o "$composePath"/docker-compose

echo -e "\nApply executable permissions to the binary"
echo -e "sudo chmod +x $composePath/docker-compose"
sudo chmod +x "$composePath"/docker-compose

echo -e "\nInstall docker compose cli - to enable command on AWS"
echo -e "curl -L https://raw.githubusercontent.com/docker/compose-cli/main/scripts/install/install_linux.sh | sh"
curl -L https://raw.githubusercontent.com/docker/compose-cli/main/scripts/install/install_linux.sh | sh

echo -e "\nTest your installation"
echo -e "docker compose version"
docker compose version

echo ""
read -r -p "┬┐Reiniciar terminal para aplicar cambios?([n]/y):" reload
if [[ "${reload}" == "y" ]]; then
    bash
fi
