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

What these commands do:

- `ls -la | grep ".txt"` first lists files in long format, then filters the
 output to show only lines containing `.txt`. The result is a shorter list
 that helps you quickly find text files.
- `cat file.txt | sort | uniq` prints the file contents, sorts the lines, and
 then removes repeated adjacent lines. The result is a sorted list of unique
 lines from `file.txt`.
- `echo "hello" > file.txt` creates `file.txt` if it does not exist, or
 overwrites its current contents so the file contains only `hello`.
- `echo "world" >> file.txt` adds `world` to the end of `file.txt` without
 deleting what was already there.
- `command 2> errors.log` sends only error messages to `errors.log`, while
 normal output still appears in the terminal.
- `command &> all.log` writes both normal output and error output to
 `all.log`, so the terminal stays quiet unless the command expects input.
- `command < input.txt` uses the contents of `input.txt` as the command's
 standard input, as if you had typed that data manually.

## 5. Permissions

```bash
chmod 755 script.sh   # rwxr-xr-x
chmod +x script.sh    # Add execute permission
chown user:group file  # Change ownership
ls -la                 # View permissions
```

What these commands do and what you see:

- `chmod 755 script.sh` updates permissions so owner gets `rwx` and group/
 others get `r-x`. Result: `ls -la` shows something like `-rwxr-xr-x` for
 `script.sh`.
- `chmod +x script.sh` adds execute permission to whoever already has read/
 write settings. Result: the file becomes runnable as `./script.sh` (if it
 has a valid script header and content).
- `chown user:group file` changes the file owner and group. Result: `ls -la`
 shows new owner/group columns for that file (often requires `sudo`).
- `ls -la` prints a long listing with hidden files, including permission bits,
 owner, group, size, and modified time so you can verify permission changes.

Permission numbers: read=4, write=2, execute=1

| Number | Permission |
|--------|-----------|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |
| 0 | --- |

How Linux interprets permissions:

- Permissions are stored as three groups: **owner**[^owner], **group**[^group], and
 **others**[^others]. In `rwxr-xr-x`, the first `rwx` is owner, second `r-x` is
 group, third `r-x` is others.
- For **files**: `r` lets you read contents, `w` lets you modify/delete the
 file (if directory permissions also allow), and `x` lets you execute it as a
 program/script.
- For **directories**: `r` lets you list names inside, `w` lets you create/
 rename/delete entries, and `x` lets you enter/search the directory.
- `755` means owner has full control (`7 = rwx`) while group and others can
 read and execute (`5 = r-x`), which is common for scripts and public app
 folders.
- `chown user:group file` changes who owns the file, which affects which
 permission set applies first.

[^owner]: The user account that owns the file. This account gets the first
 permission triplet.
[^group]: A named group of users. Any user in this group gets the second
 permission triplet.
[^others]: All remaining users on the system who are not the owner and not in
 the file's group. They get the third permission triplet.

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
