#!/bin/bash -xeu

ansible-playbook main.yml -i localhost, -c local --syntax-check
ansible-playbook main.yml -i localhost, -c local --check
ansible-playbook main.yml -i localhost, -c local
