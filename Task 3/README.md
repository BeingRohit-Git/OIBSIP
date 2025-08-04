# DVWA SQL Injection Exploit (Low Security) — Kali Linux

## Overview
Demonstrates an SQL Injection attack on DVWA (security: Low) using Kali Linux.

## Steps

1. **Install DVWA**

sudo apt update
sudo apt install dvwa
dvwa-start

Open DVWA at http://localhost/dvwa and log in.

2. **Set DVWA to Low Security:**  
DVWA Security tab → Low.

3. **Exploit SQL Injection**
- Go to "SQL Injection" module.
- Enter: `1' OR '1'='1 --` in User ID.
- Submit and observe all users revealed (proof of injection).

4. **Automated script**
- See [sql_injection_exploit.sh](./sql_injection_exploit.sh) for curl-based exploit.

## Explanation

On low security, user input is included directly in SQL queries without sanitization:

SELECT first_name, last_name FROM users WHERE user_id='$id';

Inserting `1' OR '1'='1 --` changes logic so that it always returns true, revealing all user data.

