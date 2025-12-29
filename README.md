# Threat-Hunting-Queries 🛡️

A repository of production-ready SIEM queries (KQL, SPL, and SQL) designed to detect common adversary techniques mapped to the MITRE ATT&CK framework.

## 📂 Structure
- **/Microsoft-Sentinel-KQL**: Queries for Azure/Microsoft 365 environments.
- **/Splunk-SPL**: Queries for Splunk Enterprise/Cloud.
- **/Elastic-Query**: Queries for ELK Stack (DSL/KQL).

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
