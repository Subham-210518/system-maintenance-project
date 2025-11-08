LOGFILE="/var/log/syslog"
OUTPUT="$HOME/log_monitor_output.txt"
if [ ! -f "$LOGFILE" ]; then
echo "Log file $LOGFILE not found. Trying /var/log/dmesg..."
LOGFILE="/var/log/dmesg"
fi
echo "Searching $LOGFILE for errors and warnings..."
grep -iE "error|fail|critical|warning" "$LOGFILE" > "$OUTPUT" 2>/dev/null || true
if [ -s "$OUTPUT" ]; then
echo "Issues found in system logs. Check $OUTPUT for details."
head -n 10 "$OUTPUT"
echo ""
echo "Full details saved at : $OUTPUT"
else
echo "No major issues found in system or log file is empty/not available."
fi
