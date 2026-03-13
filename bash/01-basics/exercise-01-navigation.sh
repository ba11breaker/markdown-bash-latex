#!/bin/bash
# =============================================================================
# Exercise 1: Navigation and File Operations
# =============================================================================
# Complete each task by writing the correct command below the comment.
# Run this script to check your work: bash exercise-01-navigation.sh
# =============================================================================

echo "=== Exercise 1: Navigation and File Operations ==="
echo ""

# Create a temporary workspace
WORKSPACE=$(mktemp -d)
echo "Working in: $WORKSPACE"
cd "$WORKSPACE" || exit 1

# --- Task 1 ---
# Create a directory structure: project/src/utils/
echo "Task 1: Create nested directory structure"
# YOUR COMMAND HERE:


# --- Task 2 ---
# Create three empty files: project/src/main.py, project/src/utils/helper.py,
# project/README.md
echo "Task 2: Create files"
# YOUR COMMAND HERE:


# --- Task 3 ---
# Write "# My Project" into project/README.md (overwrite)
echo "Task 3: Write to file"
# YOUR COMMAND HERE:


# --- Task 4 ---
# Append "Version 1.0" as a new line to project/README.md
echo "Task 4: Append to file"
# YOUR COMMAND HERE:


# --- Task 5 ---
# Copy the entire project/ directory to project-backup/
echo "Task 5: Copy directory"
# YOUR COMMAND HERE:


# --- Task 6 ---
# List all files recursively in project/ (hint: ls -R or find)
echo "Task 6: List all files"
# YOUR COMMAND HERE:


# --- Verification ---
echo ""
echo "=== Verification ==="
if [ -d "project/src/utils" ]; then echo "✓ Task 1: Directory structure exists"; else echo "✗ Task 1: FAILED"; fi
if [ -f "project/src/main.py" ] && [ -f "project/src/utils/helper.py" ] && [ -f "project/README.md" ]; then echo "✓ Task 2: Files created"; else echo "✗ Task 2: FAILED"; fi
if head -1 project/README.md 2>/dev/null | grep -q "# My Project"; then echo "✓ Task 3: File written"; else echo "✗ Task 3: FAILED"; fi
if tail -1 project/README.md 2>/dev/null | grep -q "Version 1.0"; then echo "✓ Task 4: File appended"; else echo "✗ Task 4: FAILED"; fi
if [ -d "project-backup/src/utils" ]; then echo "✓ Task 5: Directory copied"; else echo "✗ Task 5: FAILED"; fi

# Cleanup
rm -rf "$WORKSPACE"
echo ""
echo "Done! Workspace cleaned up."
