#!/usr/bin/env bash

# Update Linux software repository
echo ""
echo "sudo apt-get update"
sudo apt-get update

# Instalar AWS CLI
echo ""
echo "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo ""
echo "unzip awscliv2.zip"
unzip awscliv2.zip

echo ""
echo "sudo ./aws/install"
sudo ./aws/install

echo ""
echo "aws --version"
aws --version

echo ""
echo "rm -rf awscliv2.zip aws"
rm -rf awscliv2.zip aws

# AWS Session Manager plugin
echo ""
echo "curl https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb -o session-manager-plugin.deb"
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"

echo ""
echo "sudo dpkg -i session-manager-plugin.deb"
sudo dpkg -i session-manager-plugin.deb

echo ""
echo "session-manager-plugin"
session-manager-plugin

echo ""
echo "rm session-manager-plugin.deb"
rm session-manager-plugin.deb
