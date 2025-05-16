# 🗂️ Linux Backup Script

This is a simple Bash script that compresses the user's `Documents/` folder into a timestamped `.tar.gz` archive and saves it in a `Backups` directory. The script also logs the backup operation details to a log file.

---

## 📦 Features

- Creates a compressed backup of `/home/$USER/Documents/`
- Saves the backup in `/home/$USER/Backups/`
- Adds a timestamp to each backup file
- Logs all output and errors to `/home/$USER/log/backup.log`

---

## 📜 Script

```bash
#!/bin/bash

src="/home/$USER/Documents/"
destination="/home/$USER/Backups"
filename="bkup-$(date +%y-%m-%d_%H:%M:%S).tar.gz"
det_log="/home/$USER/log/backup.log"

tar -cvzf $destination/$filename $src >> $det_log 2>&1

🛠️ Setup Instructions
1. Make Sure the Required Folders Exist

Create Backups and log directories in your home folder if they don't exist:

mkdir -p ~/Backups
mkdir -p ~/log

2. Make the Script Executable

chmod +x backup.sh

3. Run the Script

./backup.sh

This will create a backup like:

~/Backups/bkup-25-05-16_14:23:01.tar.gz

And log details in:

~/log/backup.log

🕒 Automate with Cron (Optional)

To run this script automatically every day at 1 AM, add this to your crontab:

crontab -e

Then add:

0 1 * * * /home/yourusername/path/to/backup.sh

Make sure to update the path accordingly.
