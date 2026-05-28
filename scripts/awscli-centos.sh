#!/bin/bash

# Update system
sudo yum update -y

# Install unzip
sudo yum install unzip -y

# Download AWS CLI v2 installer
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Extract installer
unzip awscliv2.zip

# Install AWS CLI
sudo ./aws/install

# Verify installation
aws --version
