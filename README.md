https://roadmap.sh/projects/log-archive-tool

# 🗃️ Log Archive Script

This Bash script is used to archive `.log` files from a specified directory, compress them into a timestamped `.tar.gz` archive, and store them in a local `archives/` directory. It also logs each archive operation with the time and location.

---

## 📌 Features

- ✅ Accepts any log directory as a command-line argument
- 📦 Compresses all `.log` files into a `tar.gz` archive
- 📂 Stores the archive in a local `archives/` directory
- 📝 Logs every operation in `archive_log.txt` inside `archives/`
- 🕐 Can be scheduled with `cron` to run automatically at a set time

---

## 📁 Output Format

- Archive filename format:
logs_archive_YYYYMMDD_HHMMSS.tar.gz

diff
Copy
Edit
- Example:
logs_archive_20250421_133600.tar.gz

yaml
Copy
Edit

---

## 🧾 Usage

### 📍 Step 1: Make the script executable

bash
chmod +x log-archive.sh
📍 Step 2: Run the script
bash
Copy
Edit
./log-archive.sh /path/to/log-directory
Example:
bash
Copy
Edit
./log-archive.sh /var/log
Note: You may need to run the script with sudo if accessing system-level log directories.

🗓️ Schedule it with cron
To run the script every day at 1:36 PM, add the following line to your crontab:

bash
Copy
Edit
36 13 * * * /full/path/to/log-archive.sh /var/log >> /full/path/to/cron_output.log 2>&1
To edit your crontab:

bash
Copy
Edit
crontab -e
📂 Directory Structure
lua
Copy
Edit
your-project-folder/
├── log-archive.sh
├── archives/
│   ├── logs_archive_20250421_133600.tar.gz
│   └── archive_log.txt
└── README.md
📋 Log File Sample
Every run is logged like this in archives/archive_log.txt:

pgsql
Copy
Edit
Mon Apr 21 13:36:00 UTC 2025 - Archived logs from /var/log to logs_archive_20250421_133600.tar.gz
🔐 Permissions
You must have read access to the target log directory

Use sudo if needed when accessing protected system logs
