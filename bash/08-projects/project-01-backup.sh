#!/bin/bash
# =============================================================================
# Project 1: Build a Backup Script
# =============================================================================
#
# Create a script that:
# 1. Takes a source directory and backup destination as arguments
# 2. Creates a timestamped backup (e.g., backup-2024-01-15-143022.tar.gz)
# 3. Keeps only the last 5 backups (deletes older ones)
# 4. Logs all operations to a log file
# 5. Sends a summary when done (print to stdout for now)
#
# Requirements:
# - Validate that source directory exists
# - Create destination directory if it doesn't exist
# - Handle errors gracefully (don't crash on first error)
# - Use functions for each major operation
# - Add color output for success/error messages
#
# Usage: ./project-01-backup.sh /path/to/source /path/to/backups
#
# =============================================================================

# YOUR CODE HERE:

# Hints:
# - Use date '+%Y-%m-%d-%H%M%S' for timestamp
# - Use tar -czf for compression
# - Use ls -t to sort by time, tail to get old files
# - Use tee to write to both log and stdout
# - Colors: RED='\033[0;31m' GREEN='\033[0;32m' NC='\033[0m'
