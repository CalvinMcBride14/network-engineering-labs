# DNS Troubleshooting & Monitoring Simulation Lab

This lab simulates a small enterprise network where internal DNS and web services are deployed, monitored, 
and tested for failure points. It focuses on DNS resolution, client-server communication, and basic fault detection.

---

## Lab Topology

- **R1** (Router): 172.16.10.1 — Default gateway
- **Switch0**: Core LAN switch
- **PC-A**: 172.16.10.10 — Internal user with proper DNS config
- **PC-B**: 172.16.10.11 — Used for DNS misconfiguration testing
- **DNS Server**: 172.16.10.53 — Resolves internal domains
- **Web Server**: 172.16.10.80 — Hosts `www.testsite.com`
- **Syslog Server (Optional)**: 172.16.10.100 — Monitoring/logging simulation

---

## DNS Records Used

| Domain             | IP Address     |
|--------------------|----------------|
| www.testsite.com   | 172.16.10.80   |
| router.local       | 172.16.10.1    |
| intranet.local     | 172.16.10.80   |

---

## Key Configurations

### Router (R1)
```bash
interface g0/0
 ip address 172.16.10.1 255.255.255.0
 no shutdown
ip domain-lookup
ip name-server 172.16.10.53
