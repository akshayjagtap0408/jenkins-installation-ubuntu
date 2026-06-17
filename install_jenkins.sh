#!/bin/bash
#set -e

echo "🔄 Updating package list..."
sudo apt update

echo "📦 Installing Java (OpenJDK 21) and fontconfig..."
sudo apt install -y fontconfig openjdk-21-jre

echo "✅ Checking Java version..."
java -version

echo "🔑 Adding Jenkins GPG key..."
sudo mkdir -p /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

echo "📝 Adding Jenkins repository..."
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

echo "🔄 Updating package list again..."
sudo apt update

echo "📦 Installing Jenkins..."
sudo apt install -y jenkins

echo "🚀 Enabling and starting Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "🎉 Jenkins installation complete!"
echo "👉 Access Jenkins at: http://localhost:8080"

