#!/bin/bash

# Update system
sudo yum update -y

# Install Docker
sudo yum install docker -y

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add users to docker group
sudo usermod -aG docker jenkins
sudo usermod -aG docker $USER

# Set Docker socket permissions
sudo chmod 660 /var/run/docker.sock
sudo chown root:docker /var/run/docker.sock

# Restart Docker
sudo systemctl restart docker

# Verify Docker installation
docker --version

# Run SonarQube container
#docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
