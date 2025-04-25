# Linux User Management & Backup Automation
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