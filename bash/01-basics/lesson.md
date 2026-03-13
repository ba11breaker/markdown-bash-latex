# Bash Basics

Bash (Bourne Again SHell) is the default shell on most Unix/Linux systems
and macOS (older versions). It's essential for system administration,
automation, and development workflows.

---

## 1. Navigating the Filesystem

```bash
pwd                  # Print working directory
ls                   # List files
ls -la               # List all files (including hidden) with details
cd /path/to/dir      # Change directory
cd ~                 # Go to home directory
cd -                 # Go to previous directory
cd ..                # Go up one level
```

## 2. File Operations

```bash
touch file.txt       # Create empty file (or update timestamp)
mkdir dirname        # Create directory
mkdir -p a/b/c       # Create nested directories
cp source dest       # Copy file
cp -r dir1 dir2      # Copy directory recursively
mv old new           # Move or rename
rm file.txt          # Remove file
rm -r dirname        # Remove directory recursively
```

## 3. Viewing Files

```bash
cat file.txt         # Print entire file
less file.txt        # View file with scrolling
head -n 10 file.txt  # First 10 lines
tail -n 10 file.txt  # Last 10 lines
tail -f logfile      # Follow file updates in real time
wc -l file.txt       # Count lines
```

## 4. Pipes and Redirection

```bash
# Pipes: send output of one command to input of another
ls -la | grep ".txt"
cat file.txt | sort | uniq

# Redirection
echo "hello" > file.txt    # Write (overwrite) to file
echo "world" >> file.txt   # Append to file
command 2> errors.log      # Redirect stderr
command &> all.log         # Redirect both stdout and stderr
command < input.txt        # Read stdin from file
```

## 5. Permissions

```bash
chmod 755 script.sh   # rwxr-xr-x
chmod +x script.sh    # Add execute permission
chown user:group file  # Change ownership
ls -la                 # View permissions
```

Permission numbers: read=4, write=2, execute=1

| Number | Permission |
|--------|-----------|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |
| 0 | --- |

## 6. Getting Help

```bash
man command          # Manual page
command --help       # Quick help
which command        # Find command location
type command         # Show command type
```

## 7. Your First Script

Create a file called `hello.sh`:

```bash
#!/bin/bash
echo "Hello, World!"
echo "Today is $(date)"
echo "You are $(whoami) on $(hostname)"
```

Run it:
```bash
chmod +x hello.sh
./hello.sh
```

---

## Key Takeaways

- The shell is your most powerful tool — learn to love it
- Pipes (`|`) are the key to composing complex operations
- Redirection (`>`, `>>`, `<`) controls where data flows
- Always use `man` when you forget syntax
