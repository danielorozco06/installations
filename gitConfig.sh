#!/usr/bin/env bash

# Check git version 
echo -e "\ngit --version"
git --version

# Configure git
echo -e ""
read -r -p "Ingresar usuario:" userName
echo "git config --global user.name $userName"
git config --global user.name "$userName"

echo -e ""
read -r -p "Ingresar correo:" correo
echo "git config --global user.email $correo"
git config --global user.email "$correo"
