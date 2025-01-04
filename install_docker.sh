#!/bin/bash

# Download Docker installation script
sudo curl -fsSL https://get.docker.com/ -o get-docker.sh
# Run the official Docker install script
sudo sh get-docker.sh

# Add current user to the "docker" group
sudo usermod -aG docker ${USER}

#Reboot the system to ensure group changes take effect
sudo reboot

# After reboot, test Docker (this line won't run until after login again)
docker run hello-world