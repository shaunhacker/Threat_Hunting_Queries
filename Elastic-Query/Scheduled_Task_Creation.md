# Scheduled Task Persistence
**Description:** Detects the use of `schtasks.exe` to create new tasks for persistence.

**Query:**
```text
process.name : "schtasks.exe" and process.args : ("/create" or "-create")
