#!/bin/bash

# Update system
sudo yum update -y

# Install curl
sudo yum install curl -y

# Download latest kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Give execute permission
chmod +x kubectl

# Move kubectl to system path
sudo mv kubectl /usr/local/bin/

# Verify installation
kubectl version --client
