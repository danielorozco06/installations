#!/usr/bin/env bash

# Update Linux software repository
echo -e "\nsudo apt-get update"
sudo apt-get update

# Instalar paquetes para extensiones de Azure DevOps
echo -e "\nsudo apt install node-typescript -y"
sudo apt install node-typescript -y

# Get files to install NVM
echo -e "\ngit clone https://github.com/nvm-sh/nvm.git"
git clone https://github.com/nvm-sh/nvm.git

# Install NVM
echo -e "\nnvm/install.sh"
nvm/install.sh

# To use nvm now:
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install nodejs and npm
echo -e "\nnvm install v12.22.3 "
nvm install v12.22.3

# Instalar Typescript
echo -e "\nnpm install -g typescript"
npm install -g typescript

echo -e "\n#########################"
echo "Check version of packages installed"
echo -e "\nnvm -v"
nvm -v

echo -e "\nnode -v"
node -v

echo -e "\nnpm -v"
npm -v

echo -e "\ntsc -v"
tsc -v

echo -e "\n#########################"
echo "Remover rutas innecearias"
echo -e "\nrm -rf nvm"
rm -rf nvm

echo ""
read -r -p "¿Reiniciar terminal para aplicar cambios?([n]/y):" reload
if [[ "${reload}" == "y" ]]; then
    bash
fi
