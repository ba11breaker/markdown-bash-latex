#!/bin/bash
# =============================================================================
# Project 3: System Monitor Dashboard
# =============================================================================
#
# Build a script that displays a live system monitoring dashboard.
#
# The script should display:
# 1. System info (hostname, OS, uptime)
# 2. CPU usage
# 3. Memory usage (total, used, free, percentage)
# 4. Disk usage (for each mounted filesystem)
# 5. Top 5 processes by CPU
# 6. Top 5 processes by memory
# 7. Network info (IP address, active connections count)
#
# Features:
# - Refresh every N seconds (default: 5)
# - Color coding (green < 60%, yellow 60-80%, red > 80%)
# - Clean terminal output (clear screen between refreshes)
# - Graceful exit on Ctrl+C
#
# Usage: ./project-03-system-monitor.sh [refresh_seconds]
#
# =============================================================================

# YOUR CODE HERE:

# Hints:
# - macOS: use `top -l 1`, `vm_stat`, `df -h`, `sysctl`
# - Linux: use `top -bn1`, `free -m`, `df -h`, `/proc/stat`
# - Use tput or ANSI codes for colors
# - Use `trap` to catch Ctrl+C for graceful exit
# - Use printf for aligned output
# - clear command to refresh display
