System Maintenance Project
Author: Subham Samantaray
Platform: WSL (Ubuntu on Windows 11)
Objective
---------
This project automates key Linux system maintenance tasks using Bash scripting.
It was developed as part of a capstone project focused on file management, system updates, and log monitoring.
Features
--------
Backup Script (backup.sh)
-------------------------
Creates backups of important files or directories and stores them in timestamped folders for easy version control.
Update and Cleanup Script (update_cleanup.sh)
Performs system updates, removes unnecessary packages, and clears cached files to maintain optimal performance.

Log Monitor Script (log_monitor.sh)
-----------------------------------
Scans system log files to identify errors, warnings, or other critical issues.

Maintenance Suite (maintenance_suite.sh)
----------------------------------------
Provides a single interactive menu that allows users to run all maintenance tasks from one interface.

How to Run
chmod +x *.sh
./maintenance_suite.sh

Once the menu appears, choose the desired option to:
1.Create a system backup
2.Perform system update and cleanup
3.Monitor system logs for issues
