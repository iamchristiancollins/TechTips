#!/bin/bash

# daily_backup.sh
# This script creates a daily backup of a specified directory.

# Configuration
SOURCE_DIR="/path/to/source_directory"  # Directory to back up
BACKUP_DIR="/path/to/backup_directory"  # Where to store the backups
BACKUP_NAME="backup_$(date +%Y-%m-%d)"  # Backup name with date

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Perform the backup using tar
tar -czf "$BACKUP_DIR/$BACKUP_NAME.tar.gz" "$SOURCE_DIR"

# Optional: Remove backups older than X days
# find "$BACKUP_DIR" -type f -mtime +30 -name '*.tar.gz' -delete

echo "Backup of $SOURCE_DIR completed successfully."


# How to Use This Script:
# Replace /path/to/source_directory with the path of the directory you want to back up.
# Replace /path/to/backup_directory with the path where you want to store the backup files.
# (Optional) If you want the script to automatically delete backups older than a certain number of days, uncomment the line starting with find and replace 30 with your desired number of days.
# Save the script to a file named daily_backup.sh in your scripts/automation/ directory.
# Make the script executable by running chmod +x daily_backup.sh in your terminal.
# Schedule the script to run daily using a cron job or a similar scheduling tool.