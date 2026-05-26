#!/bin/bash

# Update system
sudo yum update -y

# Install wget
sudo yum install -y wget

# Add Trivy repository
cat <<EOF | sudo tee /etc/yum.repos.d/trivy.repo
[trivy]
name=Trivy repository
baseurl=https://aquasecurity.github.io/trivy-repo/rpm/releases/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://aquasecurity.github.io/trivy-repo/rpm/public.key
EOF

# Install Trivy
sudo yum install -y trivy

# Verify installation
trivy --version
