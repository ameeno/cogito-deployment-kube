#!/usr/bin/env bash

ansible-playbook -i hosts ./ansible-playbooks/initial.yml
ansible-playbook -i hosts ./ansible-playbooks/kube-dependencies.yml
ansible-playbook -i hosts ./ansible-playbooks/master.yml
ansible-playbook -i hosts ./ansible-playbooks/workers.yml
ansible-playbook -i hosts ./ansible-playbooks/start-api.yml