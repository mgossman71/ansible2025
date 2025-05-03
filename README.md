# Ansible Ubuntu Project

This project is designed to manage and configure Ubuntu systems using Ansible. It provides a structured approach to automate common administrative tasks and system configurations.

## Folder Structure

- **inventories/**: Contains inventory files for different environments (e.g., production, staging).
- **roles/**: Contains reusable roles for tasks like configuring web servers or common settings.
- **group_vars/**: Variables applied to groups of hosts.
- **host_vars/**: Variables applied to individual hosts.
- **playbooks/**: Contains playbook files for orchestrating tasks.

## Playbooks

### `site.yml`
The main playbook that orchestrates the execution of other playbooks:
- **`enable_root_ssh.yml`**: Enables root SSH login by modifying the SSH configuration and restarting the SSH service.
- **`disable_firewalld.yml`**: Disables and stops the `firewalld` service.

## Usage

1. Update the inventory files in `inventories/` to match your environment.
2. Customize variables in `group_vars/` and `host_vars/` as needed.
3. Write or modify playbooks in `playbooks/` to suit your requirements.
4. Run the playbooks using the following command:
   ```sh
   ansible-playbook playbooks/site.yml