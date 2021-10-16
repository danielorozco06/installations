#!/usr/bin/env bash

# Update Linux software repository
echo ""
echo "sudo apt-get update"
sudo apt-get update

# Install Docker dependencies
echo ""
echo "sudo apt install --no-install-recommends apt-transport-https ca-certificates curl gnupg2 -y"
sudo apt install --no-install-recommends apt-transport-https ca-certificates curl gnupg2 -y

# Set some OS-specific variables
echo ""
echo "source /etc/os-release"
source /etc/os-release

# Make sure that apt will trust the repo
echo ""
echo "curl -fsSL "https://download.docker.com/linux/${ID}/gpg" | sudo apt-key add -"
curl -fsSL "https://download.docker.com/linux/${ID}/gpg" | sudo apt-key add -

# Add and update the repo information
echo ""
echo "deb [arch=amd64] https://download.docker.com/linux/${ID} ${VERSION_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/docker.list \

# Update Linux software repository
echo ""
echo "sudo apt-get update"
sudo apt-get update

# Install Docker
echo ""
echo "sudo apt install docker-ce docker-ce-cli containerd.io -y"
sudo apt install docker-ce docker-ce-cli containerd.io -y

# Add user to docker group
echo ""
echo "sudo usermod -aG docker $USER"
sudo usermod -aG docker "$USER"

echo ""
echo "Start Docker service with: "
echo ">: sudo service docker start"

echo ""
echo "Check Docker with:"
echo ">: docker run hello-world"

echo ""
read -r -p "¿Activar cambios en los grupos para Docker?([n]/y):" reload
if [[ "${reload}" == "y" ]]; then
    echo "newgrp docker"
    newgrp docker 
fi
