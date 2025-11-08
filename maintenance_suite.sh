while true; do
echo "======================================"
echo "******System Maintenance Menu*********"
echo "======================================"
echo "1.Backup Files"
echo "2.Update and Cleanup System"
echo "3.Monitor Logs"
echo "4.Exit"
echo "--------------------------------------"
read -p "Enter your choice [1-4]: " choice
case $choice in
1)bash backup.sh;;
2)bash update_cleanup.sh;;
3)bash log_monitor.sh;;
4)echo "Exiting..."; exit 0 ;;
*)echo "Invalid choice! Please try again. ";;
esac
echo ""
done
