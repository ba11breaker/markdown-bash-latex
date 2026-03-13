# Control Flow in Bash

## 1. Conditionals: if/elif/else

```bash
if [ "$age" -gt 18 ]; then
    echo "Adult"
elif [ "$age" -eq 18 ]; then
    echo "Just turned adult"
else
    echo "Minor"
fi
```

### Test Operators

**Numeric:** `-eq`, `-ne`, `-gt`, `-ge`, `-lt`, `-le`

**String:** `=`, `!=`, `-z` (empty), `-n` (not empty)

**File:** `-f` (is file), `-d` (is directory), `-e` (exists), `-r` (readable),
`-w` (writable), `-x` (executable), `-s` (non-empty)

**Logic:** `&&` (and), `||` (or), `!` (not)

```bash
# Modern double-bracket (preferred)
if [[ "$str" == "hello" ]]; then ...    # String comparison
if [[ "$str" =~ ^[0-9]+$ ]]; then ...   # Regex match
if [[ -f "$file" && -r "$file" ]]; then ... # Combined
```

## 2. Case Statement

```bash
case "$fruit" in
    apple)
        echo "Red fruit"
        ;;
    banana|plantain)
        echo "Yellow fruit"
        ;;
    *)
        echo "Unknown fruit"
        ;;
esac
```

## 3. For Loops

```bash
# List form
for fruit in apple banana cherry; do
    echo "$fruit"
done

# Range
for i in {1..10}; do
    echo "$i"
done

# C-style
for ((i = 0; i < 10; i++)); do
    echo "$i"
done

# Over files
for file in *.txt; do
    echo "Processing $file"
done

# Over array
arr=(one two three)
for item in "${arr[@]}"; do
    echo "$item"
done
```

## 4. While / Until Loops

```bash
# While
count=0
while [ $count -lt 5 ]; do
    echo "$count"
    ((count++))
done

# Read file line by line
while IFS= read -r line; do
    echo "Line: $line"
done < file.txt

# Until (loop until condition is true)
until [ $count -ge 10 ]; do
    echo "$count"
    ((count++))
done
```

## 5. Select (Interactive Menu)

```bash
select opt in "Option A" "Option B" "Quit"; do
    case $opt in
        "Option A") echo "You chose A" ;;
        "Option B") echo "You chose B" ;;
        "Quit") break ;;
        *) echo "Invalid" ;;
    esac
done
```

## 6. Break and Continue

```bash
for i in {1..10}; do
    if [ $i -eq 3 ]; then continue; fi  # Skip 3
    if [ $i -eq 8 ]; then break; fi     # Stop at 8
    echo "$i"
done
```

---

## Key Takeaways

- Always quote variables in tests: `[ "$var" -eq 1 ]`
- Prefer `[[ ]]` over `[ ]` — it's safer and more powerful
- `case` is cleaner than long if/elif chains
- `while read` is the idiomatic way to process files line by line
