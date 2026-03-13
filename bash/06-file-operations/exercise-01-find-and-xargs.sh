#!/bin/bash
# =============================================================================
# Exercise: find, xargs, and Advanced File Operations
# =============================================================================

echo "=== Advanced File Operations ==="
echo ""

WORKSPACE=$(mktemp -d)
cd "$WORKSPACE" || exit 1

# Setup: Create a project-like structure
mkdir -p src/{components,utils,tests}
echo 'console.log("app");' > src/app.js
echo 'export default {};' > src/components/Header.js
echo 'export default {};' > src/components/Footer.js
echo 'export const add = (a, b) => a + b;' > src/utils/math.js
echo 'export const format = (s) => s.trim();' > src/utils/string.js
echo 'test("adds", () => {});' > src/tests/math.test.js
echo '# TODO: fix this' > src/components/Header.js.bak
echo '{}' > package.json
echo 'node_modules/' > .gitignore
touch -t 202301010000 src/app.js        # Old file
touch -t 202401010000 src/utils/math.js  # Recent file

echo "Project structure created"
echo ""

# --- Task 1 ---
# Find all .js files (not .bak files)
echo "Task 1: Find all .js files"
# YOUR COMMAND HERE:


# --- Task 2 ---
# Find all files modified in 2024 (less than 400 days old)
echo "Task 2: Recently modified files"
# YOUR COMMAND HERE:


# --- Task 3 ---
# Find all files containing "export" and print their names
echo "Task 3: Files with 'export'"
# Hint: find with -exec grep or use grep -rl
# YOUR COMMAND HERE:


# --- Task 4 ---
# Find and delete all .bak files (print what would be deleted first)
echo "Task 4: Clean up .bak files"
# YOUR COMMAND HERE (first list, then delete):


# --- Task 5 ---
# Count total lines across all .js files using find + xargs
echo "Task 5: Total lines of JS"
# YOUR COMMAND HERE:


# --- Task 6 ---
# Create a tar.gz archive of the src/ directory called project.tar.gz
# Then list its contents
echo "Task 6: Create archive"
# YOUR COMMAND HERE:


echo ""
rm -rf "$WORKSPACE"
echo "Done!"
