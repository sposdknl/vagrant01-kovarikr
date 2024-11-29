#!/usr/bin/env bash

# Instalace balicku net-tools
sudo yum install -y net-tools

# Stažení balíčku pro instalaci zabbix repo
sudo wget rpm https://repo.zabbix.com/zabbix/6.0/rhel/9/x86_64/zabbix-release-latest.el9.noarch.rpm

# Instalace meta balíčku
sudo dpkg -i zabbix-release_latest+ubuntu22.04_all.deb

# Aktualizace repository
sudo yum update

# Instalace meta balíčku
sudo yum install -y zabbix-agent2 zabbix-agent2-plugin-*

# Povoleni sluzby zabbix-agent2
sudo systemctl enable zabbix-agent2

# Restart sluzby zabbix-agent2
sudo systemctl restart zabbix-agent2

# EOF