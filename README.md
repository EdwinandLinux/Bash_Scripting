# I - Linux User Management & Backup Automation
## 📄 Overview
This project demonstrates an **automated user account management script** for Linux systems. The script efficiently handles **user account disabling**, **deleting**, **creating** and **home directory backup**, ensuring that data is preserved when needed.

---

##  Key Features
- ✅ **Automated User Validation** – Checks if the specified user exists before executing any operation.  
- ✅ **Secure Data Backup** – Compresses and stores the user's home directory to prevent accidental data loss.  
- ✅ **Flexible Account Management** – Allows system admins to disable accounts for users on extended leave or delete accounts while keeping their home directory.  
- ✅ **Error Handling & Logging** – Provides clear feedback and prevents misconfigurations.

---

##  Technologies Used

- 🔹 **Bash Scripting** – Core automation logic  
- 🔹 **Linux User Management Commands** – `id`, `usermod`, `userdel`, `chage`, `tar`,`useradd` 
- 🔹 **File System Management** – Ensures backups are safely stored in a specified directory  

---

##  Use Case
Ideal for **IT support teams** and **Linux system administrators** who need a streamlined way to manage user accounts while safeguarding critical user data. This script is especially useful during:

- Employee offboarding
- Temporary leaves of absence
- Routine audits of inactive accounts

---

##  How to Use

1. Clone the repository.
2. Make the script executable:  
   ```bash
   chmod +x user_manage.sh
   ```

# II - # 🖥️ System Monitoring & Alert Script (Bash)

A simple and effective Bash script to **monitor CPU, memory, and disk usage** on a Linux system. When usage exceeds defined thresholds, alerts are logged to a file (or optionally sent via email or webhook).

---

## 📌 Features

- ✅ CPU usage monitoring  
- ✅ Memory usage monitoring  
- ✅ Disk usage monitoring  
- ✅ Configurable thresholds  
- ✅ Logs alerts with timestamps  
- ✅ Easy to schedule via `cron`  
- ✅ Lightweight and dependency-free (except standard Linux tools)

---

## 📂 Project Structure

monitoring_project/
├── monitor.sh # Main script
├── config.cfg # Thresholds and settings
└── logs/
└── monitor.log # Output log file

## 2. Set Configuration Thresholds
Edit config.cfg to define usage thresholds:
```
# config.cfg
CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=80

LOG_FILE="./logs/monitor.log"
ALERT_METHOD="log"  # Options: log
```
## 2. Make the Script Executable
```
chmod +x monitor.sh

```
## 3 - Run the Script
```
./monitor.sh

 ```
 ## 4 - Automate with Cron 
 Run every 5 minutes using cron:
```
 crontab -e
```
Add this line:
``` 
*/5 * * * * /home/youruser/monitoring_project/monitor.sh
```

## 5 - 📝 Sample Log Output
```
2025-06-13 09:05:00 - ALERT: High CPU Usage: 92.34%
2025-06-13 09:10:00 - ALERT: High Memory Usage: 84.12%

```