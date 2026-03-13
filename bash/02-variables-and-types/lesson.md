# Variables and Data Types in Bash

Bash variables are untyped by default — everything is a string. But Bash
provides mechanisms for working with numbers, arrays, and more.

---

## 1. Variables

```bash
# Assignment (NO spaces around =)
name="Alice"
count=42

# Usage (use $ prefix)
echo "Hello, $name"
echo "Count is ${count}"    # Braces for clarity/safety

# Read-only
readonly PI=3.14159

# Unset
unset name
```

## 2. Quoting

```bash
name="World"

echo "Hello, $name"    # Double quotes: variables expand -> Hello, World
echo 'Hello, $name'    # Single quotes: literal           -> Hello, $name
echo "Path is $(pwd)"  # Command substitution in double quotes
echo "Cost: \$5"       # Escape with backslash            -> Cost: $5
```

## 3. Special Variables

```bash
$0          # Script name
$1, $2...   # Positional parameters
$#          # Number of arguments
$@          # All arguments (as separate words)
$*          # All arguments (as single string)
$?          # Exit status of last command
$$          # Current process ID
$!          # PID of last background process
```

## 4. String Operations

```bash
str="Hello, World!"

echo ${#str}              # Length: 13
echo ${str:7}             # Substring from index 7: World!
echo ${str:7:5}           # Substring from 7, length 5: World
echo ${str/World/Bash}    # Replace first: Hello, Bash!
echo ${str//l/L}          # Replace all: HeLLo, WorLd!
echo ${str^^}             # Uppercase: HELLO, WORLD!
echo ${str,,}             # Lowercase: hello, world!
echo ${str%.txt}          # Remove suffix pattern
echo ${str#Hello}         # Remove prefix pattern
```

## 5. Arithmetic

```bash
# Using $(( ))
result=$((5 + 3))
echo $((10 * 2))
echo $((15 / 4))     # Integer division: 3
echo $((15 % 4))     # Modulo: 3

# Increment
((count++))
((count += 5))

# Using let
let "x = 5 + 3"
```

## 6. Arrays

```bash
# Indexed arrays
fruits=("apple" "banana" "cherry")
echo ${fruits[0]}        # apple
echo ${fruits[@]}        # All elements
echo ${#fruits[@]}       # Length: 3
fruits+=("date")         # Append

# Associative arrays (bash 4+)
declare -A colors
colors[red]="#FF0000"
colors[green]="#00FF00"
echo ${colors[red]}
echo ${!colors[@]}       # All keys
```

## 7. Reading Input

```bash
read -p "Enter your name: " username
echo "Hello, $username"

read -sp "Password: " password   # Silent input
echo ""

read -a items <<< "one two three"   # Read into array
```

---

## Key Takeaways

- No spaces around `=` in assignments
- Always quote variables: `"$var"` prevents word splitting
- Use `${var}` braces when concatenating: `${var}suffix`
- `$(( ))` for arithmetic, `$()` for command substitution
