#!/bin/bash

# setup_dev_env.sh
# Script to set up a basic development environment on a Unix-based system.

echo "Starting development environment setup..."

# Update and Upgrade Packages
echo "Updating and upgrading existing packages..."
sudo apt-get update && sudo apt-get upgrade -y

# Install Essential Tools
echo "Installing essential tools..."
sudo apt-get install -y build-essential curl file git

# Install Code Editor (VSCode in this example)
echo "Installing Visual Studio Code..."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install -y code

# Install Programming Languages (Python and Node.js in this example)
echo "Installing Python and pip..."
sudo apt-get install -y python3 python3-pip

echo "Installing Node.js and npm..."
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Docker
echo "Installing Docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Docker Compose
echo "Installing Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Additional Setup Steps (e.g., cloning a starter project, setting up environment variables)
# git clone <your-starter-project-repo> /path/to/your/project
# export YOUR_ENV_VAR=your_value

echo "Development environment setup completed successfully!"

# Reminder to restart the terminal or source profile
echo "Please restart your terminal or run 'source ~/.bashrc' to apply changes."

# Usage:
# Customize the script with the tools, languages, and dependencies relevant to your development environment.
# Save the script as setup_dev_env.sh in the scripts/setup/ directory of your "TechTips" repository.
# Make the script executable: chmod +x setup_dev_env.sh.
# Run the script: ./setup_dev_env.sh.