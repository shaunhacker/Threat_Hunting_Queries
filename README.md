# Threat-Hunting-Queries 🛡️

A repository of production-ready SIEM queries (KQL, SPL, and SQL) designed to detect common adversary techniques mapped to the MITRE ATT&CK framework.

## 📂 Structure
Threat-Hunting-Queries
* **Microsoft-Sentinel-KQL**: Cloud-native hunting using Kusto Query Language.
* **Splunk-SPL**: Search Processing Language for on-prem and cloud logs.
* **Database-SQL**: Security auditing for SQL Server and relational databases.
* **Elastic-Query**: KQL/DSL queries for the ELK Stack.

---

## 🔍 Featured Detections

### 1. Brute Force Followed by Success
**Goal:** Identify compromised accounts where an attacker successfully guessed a password after multiple attempts.
- **MITRE:** [T1110 (Brute Force)](https://attack.mitre.org/techniques/T1110/)
- **Logic:** Aggregates failed sign-ins by IP and User, then looks for a successful event from that same pair within a short window.

### 2. Suspicious PowerShell Execution
**Goal:** Detect use of `-EncodedCommand` or hidden windows often used to bypass security controls.
- **MITRE:** [T1059.001 (Command and Scripting Interpreter: PowerShell)](https://attack.mitre.org/techniques/T1059/001/)
- **Logic:** Scans process execution logs for PowerShell flags that hide script content.

### 3. Account Creation followed by Immediate Deletion
**Goal:** Detect "Shadow Admins" creating backdoors and cleaning up logs.
- **MITRE:** [T1136 (Create Account)](https://attack.mitre.org/techniques/T1136/)

- ### 4. Database Security (SQL)
**Goal:** Monitor for "Sinister SQL" activities like unauthorized configuration changes or privilege escalation within the database itself.
- **MITRE:** [T1078 (Valid Accounts)](https://attack.mitre.org/techniques/T1078/)
- **Logic:** Audits system tables to find active sessions for accounts that should be disabled or the use of dangerous stored procedures (like `xp_cmdshell`).
