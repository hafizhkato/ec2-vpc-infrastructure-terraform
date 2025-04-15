#!/bin/bash

# Update package list
apt update -y

# Install Docker
apt install -y docker.io
systemctl start docker
systemctl enable docker
usermod -aG docker ubuntu

# Install Git
apt install -y git

# Install Node.js (NodeSource setup)
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
apt update -y && \
apt install -y nodejs

# Verify node and npm installed
node -v
npm -v

# Optional: Install PM2 (Node process manager)
npm install -g pm2

# Set environment variables (optional)
echo 'export NODE_ENV=production' >> /etc/environment
echo 'export NODE_ENV=production' >> /home/ubuntu/.bashrc
chown ubuntu:ubuntu /home/ubuntu/.bashrc

# Clone Git repo
cd /home/ubuntu
git clone https://github.com/hafizhkato/test.git
chown -R ubuntu:ubuntu test
