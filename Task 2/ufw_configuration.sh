#!/bin/bash
sudo apt update
sudo apt install -y ufw

sudo ufw allow ssh
sudo ufw deny http

sudo ufw enable

sudo ufw status numbered

For Execution : chmod +x ufw_configuration.sh
