#!/bin/bash
# =============================================================================
# Exercise 2: Pipes and Redirection
# =============================================================================

echo "=== Exercise 2: Pipes and Redirection ==="
echo ""

WORKSPACE=$(mktemp -d)
cd "$WORKSPACE" || exit 1

# Setup: Create a sample data file
cat > data.txt << 'EOF'
apple 5
banana 12
cherry 3
apple 8
date 7
banana 1
elderberry 15
apple 2
cherry 9
fig 4
EOF

cat > access.log << 'EOF'
192.168.1.1 GET /index.html 200
10.0.0.5 POST /api/users 201
192.168.1.1 GET /about.html 200
172.16.0.1 GET /index.html 404
10.0.0.5 GET /api/users 200
192.168.1.1 DELETE /api/users/1 403
10.0.0.5 POST /api/login 200
172.16.0.1 GET /styles.css 200
192.168.1.1 GET /index.html 200
10.0.0.5 GET /api/users 200
EOF

echo "Files created: data.txt, access.log"
echo ""

# --- Task 1 ---
# Sort data.txt alphabetically and save to sorted.txt
echo "Task 1: Sort data.txt"
# YOUR COMMAND HERE:


# --- Task 2 ---
# Count how many lines in data.txt contain "apple"
echo "Task 2: Count apple lines"
# YOUR COMMAND HERE (should print: 3):


# --- Task 3 ---
# Get unique fruit names from data.txt (first column only), sorted
echo "Task 3: Unique fruit names"
# Hint: use cut or awk to get first column, then sort | uniq
# YOUR COMMAND HERE:


# --- Task 4 ---
# Find all lines in access.log with status code 200, count them
echo "Task 4: Count 200 responses"
# YOUR COMMAND HERE (should print: 6):


# --- Task 5 ---
# Find the top 3 most frequent IP addresses in access.log
echo "Task 5: Top 3 IPs"
# Hint: cut the IP, sort, uniq -c, sort numerically, take top 3
# YOUR COMMAND HERE:


# --- Task 6 ---
# Redirect stderr of a failing command to /dev/null
# (run: ls /nonexistent 2>/dev/null)
echo "Task 6: Suppress errors"
# YOUR COMMAND HERE:


echo ""
echo "=== Check your output above against expected results ==="

# Cleanup
rm -rf "$WORKSPACE"
