#!/bin/bash
sudo du -h /var/cache/apt/archives
sudo sync; echo 1 > /proc/sys/vm/drop_caches
sudo apt-get clean && sudo apt-get autoclean
# Limpa a lixeira.
sudo rm -rf /home/$USER/.local/share/Trash/files/*
# Limpa arquivos temporários.
sudo rm -rf /var/tmp/*
# Limpa o cache do apt-get.
sudo apt-get clean -s
# Remove repositórios inuteis.
#sudo apt-get autoremove -s
# Remove pacotes obsoletos.
sudo apt-get autoclean -s
# Repara pacotes quebrados.
sudo rm -r /var/lib/dpkg/info
sudo rm -r /var/cache/apt/archives
sudo dpkg --configure -a
sudo apt-get -f install
sudo du -h /var/cache/apt/archives
sudo du -sh /var/cache/apt
sudo dpkg --list 'linux-image*'
sudo apt-get update
sudo apt-get upgrade -s
sudo apt-get full-upgrade -s
sudo apt-get dist-upgrade -s
