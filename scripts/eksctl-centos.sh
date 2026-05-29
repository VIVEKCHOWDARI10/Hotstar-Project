#!/bin/bash

# Install curl and tar if not present
sudo yum install -y curl tar

# Download and extract latest eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

# Move eksctl binary
sudo mv /tmp/eksctl /usr/local/bin

# Verify eksctl installation
eksctl version
