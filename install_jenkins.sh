#!/bin/bash
# Jenkins installation script for Ubuntu/Debian

# Update system
sudo apt update -y
sudo apt upgrade -y

# Install Java (Jenkins requires Java)
sudo apt install openjdk-17-jdk -y

# Add Jenkins repo key
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Add Jenkins repo
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Install Jenkins
sudo apt update -y
sudo apt install jenkins -y

# Enable and start Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "✅ Jenkins installation complete. Access it at http://localhost:8080"

