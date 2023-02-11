#!/bin/bash

echo "=========================="
echo " add configuration files "
#sudo apt-add-repository ppa:ansible/ansible
#sudo apt update
echo "================================"
echo "installl Ansible"
#sudo apt install ansible
echo "==================================="
echo " host inventry"
#sudo cat  /etc/ansible/hosts
echo "========================================="
echo "            write inventry                    "
#sudo cat  /etc/ansible/hosts
#ansible server -m ping 
#ansible server -a "df -h" 
#ansible server -a "sudo apt update"
ansible -i devloper devlopers -m ping


