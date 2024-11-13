
#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/praveensri453/expense-ansible.git
cd expense-ansible
ansible-playbook -i inventory.ini mysql.yaml
ansible-playbook -i inventory.ini backend.yaml
ansible-playbook -i inventory.ini frontend.yaml
