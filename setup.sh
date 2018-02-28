#!/bin/bash -e

sudo apt-get update
sudo apt-get install -y software-properties-common
  sudo apt autoremove -y
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y  ansible

git clone https://github.com/conlon/mediaserver

ansible-playbook mediaserver/main.yml -i mediaserver/inventories/localhost.inv -K

sudo docker-compose up -d
