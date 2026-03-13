#!/bin/bash
# =============================================================================
# Exercise: Functions
# =============================================================================

echo "=== Functions ==="
echo ""

# --- Task 1 ---
# Write a function `to_upper` that converts a string to uppercase
# Usage: to_upper "hello world" -> "HELLO WORLD"
echo "Task 1: to_upper"
# YOUR CODE HERE:

# Test: to_upper "hello world"

# --- Task 2 ---
# Write a function `is_palindrome` that checks if a string is a palindrome
# Return 0 if palindrome, 1 if not
# Hint: use `rev` command
echo "Task 2: is_palindrome"
# YOUR CODE HERE:

# Test: is_palindrome "racecar" && echo "yes" || echo "no"
# Test: is_palindrome "hello" && echo "yes" || echo "no"

# --- Task 3 ---
# Write a function `factorial` that calculates n! recursively
echo "Task 3: factorial"
# YOUR CODE HERE:

# Test: factorial 5 -> 120

# --- Task 4 ---
# Write a function `repeat` that takes a string and count, prints string N times
# Usage: repeat "ha" 3 -> "hahaha"
echo "Task 4: repeat"
# YOUR CODE HERE:

# Test: repeat "ha" 3
# Test: repeat "abc " 4

# --- Task 5 ---
# Write a function `max` that returns the larger of two numbers
# Write a function `min` that returns the smaller of two numbers
# Write a function `clamp` that uses max and min to clamp a value to a range
# Usage: clamp value min max
echo "Task 5: clamp"
# YOUR CODE HERE:

# Test: clamp 5 1 10 -> 5
# Test: clamp -3 1 10 -> 1
# Test: clamp 15 1 10 -> 10

# --- Task 6 ---
# Write a `log` function that prints timestamped messages
# Format: [YYYY-MM-DD HH:MM:SS] [LEVEL] message
# Usage: log INFO "Server started"
echo "Task 6: log function"
# YOUR CODE HERE:

# Test: log INFO "Starting up"
# Test: log ERROR "Connection failed"
# Test: log WARN "Low memory"

echo ""
echo "Done!"
