#!/usr/bin/env bash

# Install angular-cli (ng)
echo -e "\nnpm install -g @angular/cli"
npm install -g @angular/cli

echo -e "\nCheck version of packages installed"
echo -e "\nng v"
ng v
