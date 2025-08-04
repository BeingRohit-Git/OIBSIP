# UFW Basic Firewall Configuration

## Overview
This repository contains a script and documentation for configuring a simple firewall using UFW (Uncomplicated Firewall) as part of my internship task.

## Steps Performed

1. **Installed UFW:**  
   Used the system package manager to install UFW.

2. **Configured Rules:**  
   - **Allowed SSH** (port 22) to enable remote management.
   - **Denied HTTP** (port 80) to block web traffic.

3. **Enabled the Firewall:**  
   Turned on UFW and confirmed the status and rules.

## Usage

Run the provided script:

chmod +x ufw_configuration.sh
./ufw_configuration.sh


## Verification

Below is a screenshot of the current UFW status:

![UFW Status Screenshot](ufw_status.png)

## Files Included

- `ufw_configuration.sh`: Script to configure UFW as per task requirements.
- `README.md`: Documentation.
- `ufw_status.png`: Screenshot showing active firewall rules.

## Rule Summary

| Rule            | Action  |
|-----------------|---------|
| SSH (port 22)   | Allow   |
| HTTP (port 80)  | Deny    |
