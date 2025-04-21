# 🗃️ Log Archive Script

A simple Bash script to archive `.log` files from a specified directory (like `/var/log`) into a compressed `.tar.gz` file. This is useful for keeping your system clean while retaining logs for future reference.

---

## 🚀 Features

- Accepts a log directory as an argument
- Compresses all `.log` files into a timestamped `.tar.gz` archive
- Stores the archive in a local `archives/` folder
- Logs every archive operation to `archive_log.txt`
- Can be scheduled using `cron` to run daily

---

## 📦 Archive Output

The output archive will be stored in:

archives/logs_archive_YYYYMMDD_HHMMSS.tar.gz

yaml
Copy
Edit

An example:
archives/logs_archive_20250420_133600.tar.gz

yaml
Copy
Edit

Each archive run is logged to `archives/archive_log.txt`.

---

## 🛠️ Usage

### Run the script manually:

bash
./log-archive.sh /path/to/log-directory
Example:

bash
Copy
Edit
./log-archive.sh /var/log
Make sure the script is executable:

bash
Copy
Edit
chmod +x log-archive.sh
🕐 Automate with Cron
To run this script daily at 1:36 PM, add the following to your crontab:

bash
Copy
Edit
36 13 * * * /full/path/to/log-archive.sh /var/log >> /full/path/to/cron_output.log 2>&1
To edit crontab:

bash
Copy
Edit
crontab -e
📁 Directory Structure
lua
Copy
Edit
.
├── log-archive.sh
├── archives/
│   ├── logs_archive_20250420_133600.tar.gz
│   └── archive_log.txt
└── README.md
🔒 Permissions
If accessing /var/log, you may need to run the script with elevated permissions:

bash
Copy
Edit
sudo ./log-archive.sh /var/log
📄 License
MIT License (or choose your preferred license).

👨‍💻 Author
Your Name – @yourgithub

vbnet
Copy
Edit

Let me know if you'd like a version with badges (e.g., shell script icon, cron icon, license) or GitHub A
