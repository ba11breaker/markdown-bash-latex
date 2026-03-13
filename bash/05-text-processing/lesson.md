# Text Processing in Bash

The Unix philosophy: small tools that do one thing well, connected by pipes.

---

## 1. grep — Search text

```bash
grep "pattern" file.txt           # Basic search
grep -i "pattern" file.txt        # Case insensitive
grep -r "pattern" dir/            # Recursive search
grep -n "pattern" file.txt        # Show line numbers
grep -c "pattern" file.txt        # Count matches
grep -v "pattern" file.txt        # Invert (non-matching lines)
grep -l "pattern" *.txt           # Files that match
grep -E "regex" file.txt          # Extended regex (egrep)
grep -o "pattern" file.txt        # Only matching part
```

## 2. sed — Stream editor

```bash
sed 's/old/new/' file.txt         # Replace first occurrence per line
sed 's/old/new/g' file.txt        # Replace all occurrences
sed -i '' 's/old/new/g' file.txt  # In-place edit (macOS)
sed -n '5,10p' file.txt           # Print lines 5-10
sed '3d' file.txt                 # Delete line 3
sed '/pattern/d' file.txt         # Delete matching lines
sed 's/^/prefix: /' file.txt      # Add prefix to each line
```

## 3. awk — Pattern processing

```bash
awk '{print $1}' file.txt            # Print first column
awk '{print $1, $3}' file.txt        # Print columns 1 and 3
awk -F',' '{print $2}' file.csv      # Comma delimiter
awk '/pattern/ {print}' file.txt     # Print matching lines
awk '{sum += $2} END {print sum}'     # Sum second column
awk 'NR >= 5 && NR <= 10' file.txt   # Lines 5-10
awk '{print NR, $0}' file.txt        # Add line numbers
```

## 4. cut — Extract columns

```bash
cut -d',' -f1,3 file.csv     # Fields 1 and 3, comma-delimited
cut -d':' -f1 /etc/passwd    # First field, colon-delimited
cut -c1-10 file.txt           # Characters 1-10
```

## 5. sort and uniq

```bash
sort file.txt                 # Alphabetical sort
sort -n file.txt              # Numeric sort
sort -r file.txt              # Reverse sort
sort -t',' -k2 file.csv      # Sort by 2nd column
sort -u file.txt              # Sort and remove duplicates

uniq file.txt                 # Remove adjacent duplicates
uniq -c file.txt              # Count occurrences
sort file.txt | uniq -c | sort -rn   # Frequency count
```

## 6. tr — Translate characters

```bash
echo "hello" | tr 'a-z' 'A-Z'       # To uppercase
echo "hello" | tr -d 'l'             # Delete chars: heo
echo "a::b::c" | tr -s ':'           # Squeeze: a:b:c
echo "hello 123" | tr -dc '0-9'      # Keep only digits: 123
```

## 7. Other Useful Tools

```bash
wc -l file.txt        # Count lines
wc -w file.txt        # Count words
head -n 5 file.txt    # First 5 lines
tail -n 5 file.txt    # Last 5 lines
tac file.txt          # Reverse line order
rev file.txt          # Reverse each line
paste f1.txt f2.txt   # Merge files side by side
comm f1.txt f2.txt    # Compare sorted files
diff f1.txt f2.txt    # Show differences
```

---

## Key Takeaways

- `grep` finds, `sed` transforms, `awk` processes
- Chain them with pipes for powerful one-liners
- `sort | uniq -c | sort -rn` is the universal frequency counter
- Most tools read from stdin if no file is given — perfect for pipes
