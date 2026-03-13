# Functions in Bash

## 1. Defining Functions

```bash
# Style 1 (preferred)
greet() {
    echo "Hello, $1!"
}

# Style 2
function greet {
    echo "Hello, $1!"
}

# Calling
greet "Alice"
```

## 2. Arguments and Return Values

```bash
add() {
    local result=$(($1 + $2))
    echo $result    # "Return" via stdout
}

# Capture output
sum=$(add 3 5)
echo "Sum: $sum"

# Return codes (0-255 only, for success/failure)
is_even() {
    if (($1 % 2 == 0)); then
        return 0    # Success/true
    else
        return 1    # Failure/false
    fi
}

if is_even 4; then
    echo "4 is even"
fi
```

## 3. Local Variables

```bash
my_func() {
    local name="local"     # Only visible inside function
    global_var="global"    # Visible everywhere (avoid this)
    echo "$name"
}
```

## 4. Practical Patterns

```bash
# Logging function
log() {
    local level="$1"
    shift
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$level] $*"
}
log "INFO" "Script started"
log "ERROR" "Something went wrong"

# Die function (exit with error)
die() {
    echo "ERROR: $*" >&2
    exit 1
}
[ -f "config.txt" ] || die "config.txt not found"

# Validation
require_command() {
    command -v "$1" >/dev/null 2>&1 || die "$1 is required but not installed"
}
require_command "git"
```

---

## Key Takeaways

- Use `local` for all function variables
- "Return" data via `echo`; use `return` only for exit codes
- Functions must be defined before they're called
- `$@` in a function = that function's arguments, not the script's
