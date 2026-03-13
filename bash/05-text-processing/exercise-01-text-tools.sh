#!/bin/bash
# =============================================================================
# Exercise: Text Processing (grep, sed, awk, sort, etc.)
# =============================================================================

echo "=== Text Processing ==="
echo ""

WORKSPACE=$(mktemp -d)
cd "$WORKSPACE" || exit 1

# Setup: sample data
cat > employees.csv << 'EOF'
name,department,salary,city
Alice Johnson,Engineering,95000,San Francisco
Bob Smith,Marketing,72000,New York
Carol White,Engineering,105000,San Francisco
David Brown,Sales,68000,Chicago
Eve Davis,Engineering,115000,Seattle
Frank Miller,Marketing,78000,New York
Grace Lee,Sales,71000,Chicago
Henry Wilson,Engineering,98000,Seattle
Iris Chen,Marketing,82000,San Francisco
Jack Taylor,Sales,65000,New York
EOF

cat > server.log << 'EOF'
2024-01-15 08:23:45 INFO Server started on port 8080
2024-01-15 08:24:01 INFO Connection from 192.168.1.100
2024-01-15 08:24:15 WARNING High memory usage: 85%
2024-01-15 08:25:30 ERROR Database connection failed
2024-01-15 08:25:31 INFO Retrying database connection...
2024-01-15 08:25:35 INFO Database connected
2024-01-15 08:30:00 WARNING Slow query detected: 2.5s
2024-01-15 08:35:12 ERROR Out of memory
2024-01-15 08:35:13 INFO Initiating garbage collection
2024-01-15 08:40:00 INFO Health check: OK
EOF

echo "Files: employees.csv, server.log"
echo ""

# --- Task 1 ---
# Print all Engineering employees (just their names)
echo "Task 1: Engineering employees"
# Hint: grep + cut, or awk
# YOUR COMMAND HERE:


# --- Task 2 ---
# Calculate the average salary across all employees
echo "Task 2: Average salary"
# Hint: awk with -F',' to sum and count
# YOUR COMMAND HERE:


# --- Task 3 ---
# Count employees per department, sorted by count descending
echo "Task 3: Employees per department"
# Hint: cut + sort + uniq -c
# YOUR COMMAND HERE:


# --- Task 4 ---
# Extract all ERROR messages from server.log (just the message part)
echo "Task 4: Error messages"
# YOUR COMMAND HERE:


# --- Task 5 ---
# Replace all occurrences of "San Francisco" with "SF" in employees.csv
# Print the result (don't modify the original)
echo "Task 5: Replace city name"
# YOUR COMMAND HERE:


# --- Task 6 ---
# Find the highest-paid employee (print name and salary)
echo "Task 6: Highest paid"
# Hint: sort by salary column numerically
# YOUR COMMAND HERE:


# --- Task 7 ---
# Create a one-liner that processes server.log to show:
# a count of each log level (INFO, WARNING, ERROR)
echo "Task 7: Log level summary"
# YOUR COMMAND HERE:


# --- Task 8 ---
# Extract unique cities from employees.csv (skip header), sorted
echo "Task 8: Unique cities"
# YOUR COMMAND HERE:


echo ""
# Cleanup
rm -rf "$WORKSPACE"
echo "Done!"
