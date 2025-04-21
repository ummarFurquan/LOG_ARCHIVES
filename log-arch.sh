#!/bin/bash

# Exit on error
set -e

# Check if log directory is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR=$1

# Check if the provided path is a directory
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: $LOG_DIR is not a valid directory."
    exit 1
fi

# Create archives directory if it doesn't exist
ARCHIVE_DIR="./archives"
mkdir -p "$ARCHIVE_DIR"

# Create a timestamped archive name
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${ARCHIVE_DIR}/${ARCHIVE_NAME}"

# Create the archive with .log files
tar -czf "$ARCHIVE_PATH" -C "$LOG_DIR" $(find "$LOG_DIR" -type f -name "*.log" -printf "%P\n")

# Log the operation
LOG_FILE="${ARCHIVE_DIR}/archive_log.txt"
echo "$(date) - Archived logs from $LOG_DIR to $ARCHIVE_NAME" >> "$LOG_FILE"

# Output
echo "✅ Archive created: $ARCHIVE_PATH"
echo "📝 Logged to: $LOG_FILE"
