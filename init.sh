#!/usr/bin/env bash

echo -e "\n#############################"
read -r -p "Configure wsl.conf ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./setWslConf.sh"
    ./setWslConf.sh
fi

echo -e "\n#############################"
read -r -p "Configure git ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./gitConfig.sh"
    ./gitConfig.sh
fi

echo -e "\n#############################"
read -r -p "Install FZF ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./fzfInstall.sh"
    ./fzfInstall.sh
fi

echo -e "\n#############################"
read -r -p "Install linux packages ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./linuxPackages.sh"
    ./linuxPackages.sh
fi

echo -e "\n#############################"
read -r -p "Install NodeJs and NPM ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./nodeInstall.sh"
    ./nodeInstall.sh
fi

echo -e "\n#############################"
read -r -p "Install Nodemon ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./nodemonInstall.sh"
    ./nodemonInstall.sh
fi

echo -e "\n#############################"
read -r -p "Install MongoDB ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./mongoInstall.sh"
    ./mongoInstall.sh
fi

echo -e "\n#############################"
read -r -p "Install Angular CLI ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./angularInstall.sh"
    ./angularInstall.sh
fi

echo -e "\n#############################"
read -r -p "Install AWS CLI ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./installAWS.sh"
    ./installAWS.sh
fi

echo -e "\n#############################"
read -r -p "Install Docker ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./installDocker.sh"
    ./installDocker.sh
fi

echo -e "\n#############################"
read -r -p "Install Docker Compose V2 ([n]/y):" entry
if [[ "${entry}" == "y" ]]; then
    echo "./installDockerComposeV2.sh"
    ./installDockerComposeV2.sh
fi
