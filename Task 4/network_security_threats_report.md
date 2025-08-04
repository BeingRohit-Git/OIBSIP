# Network Security Threats: DoS, MITM, and Spoofing Attacks

## Introduction

Modern network infrastructures are constantly targeted by a variety of security threats. This report provides a detailed look at three common attack types: Denial-of-Service (DoS), Man-in-the-Middle (MITM), and Spoofing attacks. For each, you’ll find descriptions of how they work, their impacts, real-world examples, and actionable mitigation strategies.

---

## 1. Denial-of-Service (DoS) Attacks

### How DoS Attacks Work

- **Definition:** A DoS attack aims to overwhelm a machine or network resource—such as a server, website, or application—making it unavailable to its intended users by flooding it with fake traffic or malicious requests[2][5].
- **Methods:** Attackers might use techniques such as:
  - **UDP Floods:** Sending massive amounts of UDP packets.
  - **SYN Floods:** Exploiting the handshake process by sending repeated connection requests with spoofed IPs.
  - **Distributed DoS (DDoS):** Using many compromised devices (often IoT devices) to amplify the attack[5].

### Impacts

- Service and website downtime.
- Revenue loss and damage to reputation.
- Resource exhaustion, leading to service degradation even after the attack stops[13].

### Real-World Examples

| Attack                | Year  | Description & Impact                                                                             |
|-----------------------|-------|--------------------------------------------------------------------------------------------------|
| Dyn DDoS Attack       | 2016  | Major DNS provider attacked with Mirai botnet, knocking out Twitter, PayPal, Netflix globally[8][13]. |
| AWS DDoS              | 2020  | 2.3Tbps attack on Amazon Web Services; successfully mitigated but demonstrated attack scale[13].  |
| Estonia Cyberattacks  | 2007  | Series of attacks took down government, banking, and media sites across Estonia[16].             |

### Mitigation and Prevention

- Reduce attack surface area using firewalls and access controls.
- Deploy Content Distribution Networks (CDNs) and load balancers.
- Plan infrastructure for scalability to absorb large attacks.
- Use DDoS mitigation solutions from security providers[11][19].

---

## 2. Man-in-the-Middle (MITM) Attacks

### How MITM Attacks Work

- **Definition:** An attacker secretly intercepts, relays, or alters communications between two parties who think they are directly communicating[6][14].
- **Common Techniques:**
  - **ARP Spoofing:** Faking ARP responses to redirect local network traffic.
  - **DNS Spoofing:** Sending forged DNS responses to redirect users to malicious websites.
  - **Evil Twin:** Setting up a rogue Wi-Fi access point to intercept data.
  - **SSL Stripping:** Downgrading HTTPS to HTTP to steal credentials/text[6][9][14].

### Impacts

- Theft of sensitive data (credentials, personal info, financial data).
- Session hijacking and account takeover.
- Data tampering without user awareness.

### Real-World Examples

| Attack/Event         | Year    | Description & Impact                                                                             |
|----------------------|---------|--------------------------------------------------------------------------------------------------|
| Equifax Data Breach  | 2017    | Attackers intercepted financial data of 150 million individuals due to web app vulnerability[9]. |
| Office 365 MITM      | 2022    | 10,000 accounts compromised when attackers spoofed Office 365 login and intercepted credentials[9][17]. |
| In-flight "Evil Twin"| 2024    | Rogue Wi-Fi on a plane used to steal user credentials[9].                                        |
| Reddit Phishing+MITM | 2023    | Employee credentials stolen leading to sensitive employee data exposure[17].                     |

### Mitigation and Prevention

- Use strong encryption protocols (SSL/TLS) for data-in-transit.
- Enforce network segmentation to limit attack spread.
- Multi-Factor Authentication (MFA) to prevent access even if credentials are stolen[12][20].
- Monitor for rogue devices, fake certificates, and unusual network activity[6][12].

---

## 3. Spoofing Attacks

### How Spoofing Attacks Work

- **Definition:** Spoofing occurs when an attacker impersonates a trusted source (IP, MAC, email, DNS, or website) to trick users or network devices[7][15].
- **Types:**
  - **ARP Spoofing:** Attackers map their MAC address with the victim’s IP to intercept LAN traffic.
  - **DNS Spoofing:** Falsifying DNS responses to redirect users to malicious sites.
  - **Email/IP Spoofing:** Faking sender information to phish for credentials or distribute malware[7][15][18].

### Impacts

- Loss/theft of sensitive data.
- Malicious redirections or malware delivery.
- Helps enable other attacks (e.g., MITM, session hijacking).

### Real-World Examples

| Attack/Event           | Description                                                                                              |
|------------------------|----------------------------------------------------------------------------------------------------------|
| ARP Spoofing MITM      | Attackers intercept LAN traffic by impersonating network devices[7].                                     |
| Email Spoofing in Phishing | Attackers masquerade as trusted contacts or companies (e.g., in phishing attacks against Facebook, Google)[10][18]. |

### Mitigation and Prevention

- Use static ARP entries and packet filters to monitor/validate address mappings[7][15].
- Employ encryption (HTTPS, SSH, VPNs) for all critical network communication.
- Deploy anti-phishing, DNSSEC, and robust spam/email filtering defenses.
- Train users to recognize suspicious links/emails, and verify the source before clicking[7][15][18].

---

## Conclusion

The digital threat landscape is continually evolving, but understanding how core threats like DoS, MITM, and Spoofing work—and how to mitigate them—forms the foundation of any strong cybersecurity posture. Employing layered security, proactive monitoring, and user education are vital steps toward defending modern networks from these attacks.
