#!/usr/bin/env bash

echo -e "\ngit clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

echo -e ""
read -r -p "¿Reiniciar terminal para aplicar cambios?([n]/y):" reload

if [[ "${reload}" == "y" ]]; then
    bash
fi
