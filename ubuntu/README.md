# Ansible Project for Ubuntu Systems

This project is designed to manage and configure Ubuntu systems using Ansible.

## Folder Structure
- **inventories/**: Contains inventory files for different environments (e.g., production, staging).
- **roles/**: Contains reusable roles for tasks like configuring web servers or common settings.
- **group_vars/**: Variables applied to groups of hosts.
- **host_vars/**: Variables applied to individual hosts.
- **playbooks/**: Contains playbook files for orchestrating tasks.

## Usage
1. Update the inventory files in `inventories/`.
2. Write your playbooks in `playbooks/`.
3. Run Ansible commands from the project root.
