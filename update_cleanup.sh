LOGFILE="$HOME/update_log.txt"

echo "====================================="
echo " Starting System Update & Cleanup..."
echo "====================================="
{
echo "----- START LOG $(date) -----"
sudo apt update -y && sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean
echo "----- END LOG $(date) -----"
} >> "$LOGFILE" 2>&1
if [ $? -eq 0 ]; then
echo " Update & Cleanup Completed Successfully!"
echo "-------------------------------------------"
echo " Summary (last 10 lines of log):"
tail -n 10 "$LOGFILE"
echo "-------------------------------------------"
echo "Full log saved at: $LOGFILE"
else
echo " An Error Occurred During System Update!"
echo "-------------------------------------------"
echo "⚠️howing last 10 lines of error log:"
tail -n 10 "$LOGFILE"
echo "-------------------------------------------"
echo "Please review the full log at: $LOGFILE"
fi

