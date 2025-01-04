# Docker & Portainer Setup

This repository contains:
1. A script to install Docker on a Linux system.
2. A `docker-compose.yml` for deploying [Portainer CE](https://www.portainer.io/).

---

## Prerequisites

- A Linux distribution (e.g., Ubuntu, Debian, Raspberry Pi OS) with internet access.
- `curl` installed (if not, install with `sudo apt-get update && sudo apt-get install curl -y` or your distro's equivalent).

---

## Installation Steps

1. **Clone the Repository**

   ```bash
   git clone https://github.com/<your-username>/<your-repo>.git
   cd <your-repo>
    ```
2. **Make the Script Executable**

   ```bash
   chmod +x install-docker.sh
   ```
3. **Run the Script**

   ```bash
    ./install-docker.sh
    ```
> **Warning**: The script will reboot your system automatically. Make sure you have saved all work before running it. or comment out the reboot command in the script.
This script will:
- Download and install Docker using the official Docker script.
- Add the current user to the docker group.
- Reboot the system automatically.

4 **Re-login to the system after the reboot.**
Once your system finishes rebooting, log in again.
Note: You should now be able to run Docker commands without sudo.
```bash
docker --version
```
5. **Deploy Portainer CE**
If you have docker v2 or later, you can use the following command to deploy Portainer CE:
   ```bash
   docker compose up -d
    ```
    If you have an older version of Docker, you can use the following command:
    ```bash
    docker-compose up -d
    ```
6. **Verify containers are running**
   ```bash
   docker ps
   ```
7. **Access Portainer CE**
    - Open a web browser and go to `https://<YOUR-IP>:9443` to access Portainer CE.
    - Follow the on-screen instructions to set up your admin user.


---

- **Upgrades**: To upgrade Portainer, simply pull the latest image and recreate the container:
  ```bash
  docker pull portainer/portainer-ce:latest
  docker compose down
  docker compose up -d
