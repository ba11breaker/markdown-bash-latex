#!/bin/bash
# =============================================================================
# Exercise: Networking with curl
# =============================================================================
# NOTE: These exercises require internet access.
# We use httpbin.org — a free HTTP testing service.
# =============================================================================

echo "=== Networking with curl ==="
echo ""

# --- Task 1 ---
# Make a GET request to https://httpbin.org/get and print the response
echo "Task 1: Basic GET"
# YOUR COMMAND HERE:


# --- Task 2 ---
# Make a GET request but only show the HTTP status code
# Hint: curl -o /dev/null -s -w "%{http_code}"
echo "Task 2: Status code only"
# YOUR COMMAND HERE:


# --- Task 3 ---
# Make a POST request to https://httpbin.org/post with JSON body:
# {"name": "Alice", "age": 30}
# Set Content-Type header to application/json
echo "Task 3: POST with JSON"
# YOUR COMMAND HERE:


# --- Task 4 ---
# Download a file (the httpbin homepage) and save it as page.html
# Show a progress bar
echo "Task 4: Download file"
# YOUR COMMAND HERE:


# --- Task 5 ---
# Make a request with a custom header: X-Custom-Header: HelloWorld
# to https://httpbin.org/headers
echo "Task 5: Custom headers"
# YOUR COMMAND HERE:


# --- Task 6 ---
# Follow redirects: request https://httpbin.org/redirect/3
# (it redirects 3 times)
echo "Task 6: Follow redirects"
# Hint: curl -L
# YOUR COMMAND HERE:


echo ""
echo "Done!"
