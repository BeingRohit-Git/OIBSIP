# Network Port Scanning Internship Task

## Overview

This repository documents the steps and findings from **Task 1: Scan Your Local Network for Open Ports** as part of my internship.  
The objective was to use Nmap for discovering open ports on devices in the local network, research the services running on them, and identify potential security risks.

---

## Tools Used

- **Kali Linux** (running in VirtualBox)
- **Nmap** (version 7.95)

---

## Steps Followed

1. **Nmap Installation:**  
   Installed Nmap using:
   sudo apt update
   sudo apt install nmap

2. **IP Range Identification:**  
    Determined the local IP and network range using:
    ip addr

3. **Network Scan:**  
    Ran a SYN scan to discover active hosts and open ports:
    sudo nmap -sS 10.0.2.15/24 -oN scan_results.txt

4. **Review & Analysis:**  
    - Noted down active IPs and open ports.
    - Researched typical services for each port.
    - Identified potential security risks.
    - Saved scan results in `nmap_scan_results.txt`.


---

## Common Services & Risks

| Port | Service        | Typical Use                       | Possible Risks                         |
|------|---------------|-----------------------------------|----------------------------------------|
| 80   | HTTP          | Web servers                       | Vulnerable web apps, info disclosure   |
| 135  | MSRPC         | Windows remote management         | Remote exploits                        |
| 445  | Microsoft-DS/SMB | Windows file/printer sharing   | Ransomware/Worms, unauthorized access  |
| 53   | DNS           | Name resolution                   | DNS attacks, data exfiltration         |

---

## Recommendations

- **Disable services** not required.
- **Restrict access** to critical ports with firewall rules.
- **Keep all software** up to date to mitigate known vulnerabilities.

---

## Files Included

- `nmap_scan_results.txt`: Raw Nmap scan output  
- `README.md`: Task documentation

---

