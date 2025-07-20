# Ansible Ubuntu Project

This project is designed to manage and configure Ubuntu systems using Ansible. It provides a structured approach to automate common administrative tasks and system configurations.

## Folder Structure

- **inventories/**: Contains inventory files for different environments (e.g., production, staging).
- **roles/**: Contains reusable roles for tasks like configuring web servers or common settings.
- **group_vars/**: Variables applied to groups of hosts.
- **host_vars/**: Variables applied to individual hosts.
- **playbooks/**: Contains playbook files for orchestrating tasks.
- **scripts/**: Utility scripts for project setup and automation.
- **ubuntu/**: Main Ansible configuration, playbooks, inventories, and documentation for Ubuntu systems.

## Playbooks

### `site.yml`
The main playbook that orchestrates the execution of other playbooks:
- **`install_apt_packages.yml`**: Installs essential apt packages and starts required services.
- **`enable_root_ssh.yml`**: Enables root SSH login by modifying the SSH configuration and restarting the SSH service.
- **`disable_ufw.yml`**: Disables and stops the UFW firewall service.
- **`set_dns2.yml`**: Frees port 53 and manages DNS services.
- **`nfs_mounts.yml`**: Mounts NFS shares and ensures persistence.
- **`resetMachineID.yml`**: Truncates the machine ID for cloning or re-imaging.

Other playbooks include:
- **`disable_firewalld.yml`**: Disables and stops the `firewalld` service.
- **`install-docker-compose.yml`**: Installs Docker Compose and dependencies.
- **`dockge_install.yml`**: Installs and configures Dockge using Docker.
- **`key_setup.yml`**: Adds local SSH public key to remote authorized_keys.
- **`Movie_TV_nfs_mounts.yml`**: Mounts Movies and TV NFS shares.

## Usage

1. Update the inventory files in `inventories/` or `ubuntu/inventories/` to match your environment.
2. Customize variables in `group_vars/` and `host_vars/` as needed.
3. Write or modify playbooks in `playbooks/` to suit your requirements.
4. Run the playbooks using the following command:
   ```sh
   ansible-playbook ubuntu/playbooks/site.yml -i ubuntu/inventories/production/hosts