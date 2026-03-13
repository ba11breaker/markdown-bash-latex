#!/bin/bash
# =============================================================================
# Project 2: Log File Analyzer
# =============================================================================
#
# Build a script that analyzes web server access logs and produces a report.
#
# The script should:
# 1. Accept a log file as input (or generate sample data)
# 2. Report:
#    - Total number of requests
#    - Top 10 most visited URLs
#    - Top 10 IP addresses by request count
#    - Distribution of HTTP status codes
#    - Distribution of HTTP methods (GET, POST, etc.)
#    - Requests per hour (if timestamps available)
# 3. Output the report in a formatted way
# 4. Optionally save the report to a file
#
# Log format (Apache Combined):
# IP - - [date] "METHOD URL PROTOCOL" STATUS SIZE "REFERER" "USER_AGENT"
#
# Usage: ./project-02-log-analyzer.sh [logfile]
#        (if no logfile given, generate sample data)
#
# =============================================================================

# Generate sample data if no file provided
generate_sample_log() {
    local file="$1"
    cat > "$file" << 'SAMPLE'
192.168.1.1 - - [15/Jan/2024:08:23:45 +0000] "GET /index.html HTTP/1.1" 200 1234 "-" "Mozilla/5.0"
10.0.0.5 - - [15/Jan/2024:08:24:01 +0000] "POST /api/users HTTP/1.1" 201 567 "-" "curl/7.64"
192.168.1.1 - - [15/Jan/2024:08:24:15 +0000] "GET /about.html HTTP/1.1" 200 2345 "-" "Mozilla/5.0"
172.16.0.1 - - [15/Jan/2024:09:00:00 +0000] "GET /index.html HTTP/1.1" 404 0 "-" "Chrome/120"
10.0.0.5 - - [15/Jan/2024:09:15:30 +0000] "GET /api/users HTTP/1.1" 200 890 "-" "curl/7.64"
192.168.1.1 - - [15/Jan/2024:09:20:00 +0000] "DELETE /api/users/1 HTTP/1.1" 403 0 "-" "Mozilla/5.0"
10.0.0.5 - - [15/Jan/2024:10:00:00 +0000] "POST /api/login HTTP/1.1" 200 456 "-" "curl/7.64"
172.16.0.1 - - [15/Jan/2024:10:30:00 +0000] "GET /styles.css HTTP/1.1" 200 5678 "-" "Chrome/120"
192.168.1.1 - - [15/Jan/2024:11:00:00 +0000] "GET /index.html HTTP/1.1" 200 1234 "-" "Mozilla/5.0"
10.0.0.5 - - [15/Jan/2024:11:30:00 +0000] "GET /api/users HTTP/1.1" 200 890 "-" "curl/7.64"
192.168.1.50 - - [15/Jan/2024:11:45:00 +0000] "GET /contact.html HTTP/1.1" 200 3456 "-" "Firefox/120"
10.0.0.5 - - [15/Jan/2024:12:00:00 +0000] "PUT /api/users/2 HTTP/1.1" 200 234 "-" "curl/7.64"
172.16.0.1 - - [15/Jan/2024:12:15:00 +0000] "GET /index.html HTTP/1.1" 200 1234 "-" "Chrome/120"
192.168.1.1 - - [15/Jan/2024:12:30:00 +0000] "GET /dashboard HTTP/1.1" 302 0 "-" "Mozilla/5.0"
10.0.0.5 - - [15/Jan/2024:13:00:00 +0000] "POST /api/upload HTTP/1.1" 500 0 "-" "curl/7.64"
SAMPLE
}

# YOUR CODE HERE:

# Hints:
# - awk is your best friend for parsing structured logs
# - Use awk -F'"' to split by quotes for METHOD/URL
# - sort | uniq -c | sort -rn for frequency counts
# - printf for formatted output with alignment
