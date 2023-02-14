#ansible -i inventry -m ping web01
#sudo  vim /etc/ansible/ansible.cfg
#ansible -i inventry -m ping websrvgrp
#ansible -i inventry -m ping fullstack
#ansible -i inventry -m ping all
#sudo touch /var/log/ansible.log
#sudo chown ubuntu:ubuntu /var/log/ansible.log
#cat /var/log/ansible.log
ansible-playbook web-db.yaml -vv
