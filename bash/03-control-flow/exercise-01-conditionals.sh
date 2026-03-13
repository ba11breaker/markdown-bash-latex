#!/bin/bash
# =============================================================================
# Exercise: Conditionals and Loops
# =============================================================================

echo "=== Conditionals and Loops ==="
echo ""

# --- Task 1 ---
# Write a script that checks if a number is positive, negative, or zero
# Test with: num=5, num=-3, num=0
echo "Task 1: Number checker"
num=5
# YOUR CODE HERE:


# --- Task 2 ---
# Write a case statement that takes a file extension and prints the file type
# .sh -> "Shell script", .py -> "Python", .js -> "JavaScript", .md -> "Markdown"
# anything else -> "Unknown"
echo "Task 2: File type checker"
ext=".py"
# YOUR CODE HERE:


# --- Task 3 ---
# Print the multiplication table for 7 (7x1 through 7x12)
# Format: "7 x 1 = 7"
echo "Task 3: Multiplication table"
# YOUR CODE HERE:


# --- Task 4 ---
# FizzBuzz: Print numbers 1-30
# If divisible by 3: print "Fizz"
# If divisible by 5: print "Buzz"
# If divisible by both: print "FizzBuzz"
# Otherwise: print the number
echo "Task 4: FizzBuzz"
# YOUR CODE HERE:


# --- Task 5 ---
# Create a while loop that generates a random number between 1-10
# Keep looping until you get the number 7
# Print each guess and the total number of attempts
echo "Task 5: Guess the number"
# Hint: $(( RANDOM % 10 + 1 ))
# YOUR CODE HERE:


# --- Task 6 ---
# Given the array below, loop through and print only strings longer than 4 chars
echo "Task 6: Filter array"
words=("hi" "hello" "hey" "greetings" "yo" "howdy" "sup")
# YOUR CODE HERE:


echo ""
echo "Done!"
