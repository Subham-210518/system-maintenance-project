BACKUP_SRC="/mnt/c/Users/ASUS/OneDrive/Documents"
BACKUP_DEST="$HOME/backup_$(date +%Y%m%d_%H%M%S)"
LOGFILE="$HOME/backup_log.txt"
if [ ! -d "$BACKUP_SRC" ]; then
echo "ERROR: Source directory '$BACKUP_SRC' not found!" | tee -a "$LOGFILE"
exit 1
fi
echo "Starting backup from $BACKUP_SRC to $BACKUP_DEST..."
mkdir -p "$BACKUP_DEST"
if cp -r "$BACKUP_SRC" "$BACKUP_DEST"/; then
echo "$(date):Backup successful. Files saved to $BACKUP_DEST" | tee -a "$LOGFILE"
else
echo "$(date):Backup failed during copy operation!" | tee -a "$LOGFILE"
fi
