<<<<<<< HEAD
# jenkins-installation-ubuntu
One‑time bash script to install Jenkins on Ubuntu
=======
# Jenkins Installation Script
>>>>>>> 0e9edfc (Initial commit: Jenkins installation script)

#  Jenkins Installation Script

This repository contains a **bash script to install Jenkins automatically** on Ubuntu/Debian systems.



##  Features
-  Installs Java (OpenJDK 21)
-  Installs Jenkins
-  Installs required dependencies
-  Configures and starts Jenkins service


##  Prerequisites
Before running the script, make sure:

-  You are using **Ubuntu/Debian-based system**
-  You have **sudo/root access**
-  Internet connection is available


## What This Script Does
The script performs the following actions:

- Updates package list  
- Installs Java (OpenJDK 21)  
- Adds Jenkins GPG key  
- Adds Jenkins repository  
- Installs Jenkins  
- Starts and enables Jenkins service  


##  How to Use
### Step 1: Clone the Repository
```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo

##  Give Permission
          chmod +x jenkins-install.sh
**Run Script**
          ./jenkins-install.sh
**Access Jenkins**
          Once installation is complete, open your browser:-
          http://localhost:8080
**Get Initial Admin Password**
          sudo cat /var/lib/jenkins/secrets/initialAdminPassword (Run command in Terminal and password is show)
