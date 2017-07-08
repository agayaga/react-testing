#!/bin/bash
ansible-playbook  -vvv  -i /opt/ansible/inventory -u ubuntu --private-key ~/keys/tikal.pem /opt/ansible/deploy_container.yml

