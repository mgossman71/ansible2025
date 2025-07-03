#!/bin/bash

set -e

# Create and move to the ollama directory
mkdir -p /code/ollama
cd /code/ollama

# Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# Install pipx if not present
if ! command -v pipx &>/dev/null; then
  apt update
  apt install -y pipx
fi

# Ensure pipx path is set
pipx ensurepath

# Install open-webui using pipx
pipx install open-webui

# Create open-webui.service with the specified content
cat <<EOF > /etc/systemd/system/open-webui.service
[Unit]
Description=Ollama Service
After=network-online.target

[Service]
ExecStart=/usr/local/bin/ollama serve 
User=ollama
Group=ollama
Restart=always
RestartSec=3
Environment="PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
Environment=OLLAMA_NUM_GPU_LAYERS=30

[Install]
WantedBy=default.target
EOF

# Reload systemd to recognize the new service
systemctl daemon-reexec       # Reload systemd manager itself
systemctl daemon-reload       # Reload unit files
systemctl restart ollama      # Restart the Ollama service 
