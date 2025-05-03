#!/bin/bash

# Define the project name
PROJECT_NAME="ansible-ubuntu"

# Create the main project directory
mkdir -p $PROJECT_NAME

# Navigate into the project directory
cd $PROJECT_NAME

# Create Ansible folder structure
mkdir -p inventories/{production,staging}
mkdir -p roles/{common,webserver}/tasks
mkdir -p roles/{common,webserver}/handlers
mkdir -p roles/{common,webserver}/templates
mkdir -p roles/{common,webserver}/files
mkdir -p roles/{common,webserver}/vars
mkdir -p roles/{common,webserver}/defaults
mkdir -p roles/{common,webserver}/meta
mkdir -p group_vars
mkdir -p host_vars
mkdir -p playbooks

# Create placeholder files
touch ansible.cfg
touch inventories/production/hosts
touch inventories/staging/hosts
touch group_vars/all.yml
touch host_vars/localhost.yml
touch playbooks/site.yml
touch README.md

# Add a basic ansible.cfg
cat <<EOL > ansible.cfg
[defaults]
inventory = inventories/production/hosts
remote_user = ubuntu
host_key_checking = False
EOL

# Add a basic README.md
cat <<EOL > README.md
# Ansible Project for Ubuntu Systems

This project is designed to manage and configure Ubuntu systems using Ansible.

## Folder Structure
- **inventories/**: Contains inventory files for different environments (e.g., production, staging).
- **roles/**: Contains reusable roles for tasks like configuring web servers or common settings.
- **group_vars/**: Variables applied to groups of hosts.
- **host_vars/**: Variables applied to individual hosts.
- **playbooks/**: Contains playbook files for orchestrating tasks.

## Usage
1. Update the inventory files in \`inventories/\`.
2. Write your playbooks in \`playbooks/\`.
3. Run Ansible commands from the project root.
EOL

echo "Ansible project structure created successfully!"