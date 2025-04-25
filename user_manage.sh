#!/bin/bash

# Create User
cretate_user() {
    read -p "Enter username: " USERNAME
    # Check if user exists
    if id "$USERNAME" &>/dev/null;then
       echo " User $USERNAME already exists."
    else
       sudo useradd "$USERNAME"
       echo "User "$USERNAME" created successfully." 
    fi
}

# Disable user
disable_user() {
    read -p " Enter username to disable: " USERNAME
    if id "$USERNAME" &>/dev/null; then
       sudo usermod -L "$USERNAME"
       sudo chage -E 0 "$USERNAME"
       echo " User "$USERNAME" has been disable."
    else
       echo "User  "$USERNAME" does not exist."
    fi
}

# Backup Directory
Backup_directory() {
    USERNAME= $1
    read -p "Enter the username to backup: " USERNAME
    USER_HOME_DIRECTORY="/home/$USERNAME"
    # Current date and time in format yyyy-MM_DD_HH:MM:SS
    TIMESTAMP=$(date +%F_%T)
    # Check if the home directory exists.
    if [-d "$USER_HOME"]; then
       sudo mkdir -p "BACKUP_DIRECTORY_LOCATION"
       BACKUP_DIR = "$BACKUP_DIRECTORY_LOCATION/$USERNAME_backup_TIMESTAMP.tar.gz"
       sudo tar -czf "$BACKUP_DIR" "$USER_HOME"
       echo "Backup completed: $BACKUP_DIR"
    else
       echo "Home directory for $USERNAME does not exist."
    fi

    # Delete user
    delete_user() {
        read - p "Enter username to delete: " USERNAME
        if id "$USERNAME" &>/dev/null;then
           read -p "Do you want to backup $USERNAME's directory before deletion? (Y/N): "CONFIRM
           if ["$CONFIRM" == "Y" || "$CONFIRM"== "y" || "$CONFIRM" =="y" || "$CONFIRM" == "yes"]; then
              Backup_directory "$USERNAME"
              sudo -r userdel $USERNAME
              echo "User $USERNAME has been deleted."
           fi 
        else
           echo "User $USERNAME  does not exist."
        fi

    # Menu
    while true; do
           echo
           echo "========== User Account Management Menu =========="
           echo "1. Create User"
           echo "2. Disable User"
           echo "3. Backup User Home Directory"
           echo "4. Delete User"
           echo "5. Exit"
           echo "=================================================="
           read -p "Choose an option [1-5]: " OPTION
           echo
           casse $OPTION in ;;
                 1) cretate_user;;
                 2)disable_user;;
                 3) read -p "Enter the username to bacup: "USERNAME
                    Backup_directory $USERNAME;;
                 4)delete_user;;
                 5) Goodbye! && exit 0;;
                 *) echo "Invalid iption. Please select 1-5.";;
                 esac
    done

    }
}