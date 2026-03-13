#!/bin/bash
# =============================================================================
# Exercise: Variables, Strings, and Arithmetic
# =============================================================================

echo "=== Variables, Strings, and Arithmetic ==="
echo ""

# --- Task 1 ---
# Create variables: first_name="John", last_name="Doe", age=30
# Print: "John Doe is 30 years old"
echo "Task 1: Basic variables"
# YOUR CODE HERE:


# --- Task 2 ---
# Given the string below, use parameter expansion to:
sentence="The quick brown fox jumps over the lazy dog"
# a) Print the length of the string
# b) Extract "brown fox" (hint: ${str:10:9})
# c) Replace "fox" with "cat"
# d) Convert to uppercase
echo "Task 2: String operations"
# YOUR CODE HERE:


# --- Task 3 ---
# Calculate and print:
# a) The sum of 17 and 25
# b) 2 to the power of 10 (hint: $((2**10)))
# c) The remainder of 100 divided by 7
echo "Task 3: Arithmetic"
# YOUR CODE HERE:


# --- Task 4 ---
# Create an array of 5 programming languages
# Print: the first element, the last element, and the total count
echo "Task 4: Arrays"
# YOUR CODE HERE:


# --- Task 5 ---
# Given a filename, extract parts using parameter expansion
filepath="/home/user/documents/report.final.pdf"
# a) Extract just the filename (report.final.pdf) - hint: ${var##*/}
# b) Extract just the extension (pdf) - hint: ${var##*.}
# c) Extract the directory path (/home/user/documents) - hint: ${var%/*}
# d) Remove the extension (report.final) from the filename
echo "Task 5: Path manipulation"
# YOUR CODE HERE:


# --- Task 6 ---
# Write a script snippet that takes the first argument ($1) or defaults to "World"
# Print "Hello, <name>!"
# Hint: ${1:-default}
echo "Task 6: Default values"
name=${1:-World}
# YOUR CODE HERE:


echo ""
echo "Done!"
