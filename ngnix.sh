#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

# Update the package repository metadata
echo "Updating package repository metadata..."
yum check-update

# Install Nginx
echo "Installing Nginx..."
yum install -y nginx

# Check if the installation was successful
if [ $? -eq 0 ]; then
    echo "Nginx installation completed successfully."
else
    echo "Failed to install Nginx. Please check for errors."
fi
