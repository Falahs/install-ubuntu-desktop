---

# Ubuntu Desktop Installation Script

This script automates the installation of Ubuntu Desktop on your system. It checks for root privileges, downloads the Ubuntu Desktop ISO if it's not already present, creates a directory for installation, mounts the ISO, installs Ubuntu Desktop, and reboots your system.

## Prerequisites

- **Root Privileges:** You must have root privileges to run this script. Use `sudo` or run the script as the root user.

## Usage

1. **Make the script executable** by running the following command in your terminal:

   ```bash
   chmod +x install_ubuntu_desktop.sh
   ```

2. **Run the script:**

   ```bash
   ./install_ubuntu_desktop.sh
   ```

3. **Follow the on-screen prompts** for password and confirmation.

## Notes

- If the Ubuntu Desktop ISO (`ubuntu-desktop-20.04.4-desktop-amd64.iso`) is not found in the same directory as the script, the script will download it from the official Ubuntu releases website.

- The script creates a directory called `ubuntu-desktop` in the current directory to perform the installation.

- After installation, your system will be rebooted to complete the Ubuntu Desktop setup.

**Note:** This script is intended for educational and testing purposes. Make sure to review and modify it as needed before running it on a production system.

---
