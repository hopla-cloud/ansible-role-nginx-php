#!/bin/bash

#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Script Version 1.0

# Set env vars
export HOME=/root

# Set current date
currdate=$(date +%F)

# Install ansible
apt update
DEBIAN_FRONTEND=noninteractive apt install ansible -y --allow-yes true

# Install hoplacloud roles
ansible-galaxy install hoplacloud.nginx_php

# Write roles into log file
echo "- hoplacloud.nginx_php (${currdate})" >> /etc/hopla.cloud-roles

# Install oneclick app
ansible-playbook /root/.ansible/roles/hoplacloud.nginx_php/playbooks/nginx_php.yml
