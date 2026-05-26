#!/bin/bash

# Update system packages
sudo apt update -y

# Install required packages
sudo apt install -y wget apt-transport-https gnupg lsb-release

# Download and add Trivy GPG key
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/trivy.gpg > /dev/null

# Add Trivy repository
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] \
https://aquasecurity.github.io/trivy-repo/deb \
$(lsb_release -sc) main" | \
sudo tee /etc/apt/sources.list.d/trivy.list

# Update package list again
sudo apt update -y

# Install Trivy
sudo apt install -y trivy

# Verify installation
trivy --version
