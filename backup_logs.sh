#!/bin/bash

LOG_DIR="/var/log"
BACKUP_DIR="$HOME/log_backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="logs_backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$LOG_DIR"

echo "Loglar yedeklendi: $BACKUP_DIR/$BACKUP_FILE"
