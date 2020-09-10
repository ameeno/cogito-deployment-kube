#!/usr/bin/env bash

ansible-playbook -i hosts ./ansible-playbooks/initial.yml  --ssh-common-args='-o StrictHostKeyChecking=no'
ansible-playbook -i hosts ./ansible-playbooks/kube-dependencies.yml  --ssh-common-args='-o StrictHostKeyChecking=no'
ansible-playbook -i hosts ./ansible-playbooks/master.yml  --ssh-common-args='-o StrictHostKeyChecking=no'
ansible-playbook -i hosts ./ansible-playbooks/workers.yml  --ssh-common-args='-o StrictHostKeyChecking=no'
ansible-playbook -i hosts ./ansible-playbooks/start-api.yml  --ssh-common-args='-o StrictHostKeyChecking=no'

