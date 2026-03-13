# Extended Markdown

Beyond the basics, Markdown supports many extended features. Support varies
by parser, but these are widely supported.

---

## 1. Tables

```markdown
| Header 1 | Header 2 | Header 3 |
|----------|----------|----------|
| Cell 1   | Cell 2   | Cell 3   |
| Cell 4   | Cell 5   | Cell 6   |
```

### Alignment

```markdown
| Left   | Center  | Right  |
|:-------|:-------:|-------:|
| data   | data    | data   |
```

## 2. Task Lists

```markdown
- [x] Completed task
- [ ] Incomplete task
- [ ] Another task
```

## 3. Footnotes

```markdown
Here is a sentence with a footnote.[^1]

[^1]: This is the footnote content.
```

## 4. Definition Lists

```markdown
Term 1
: Definition of term 1

Term 2
: Definition of term 2
: Another definition for term 2
```

## 5. Fenced Code Blocks with Language

````markdown
```javascript
const greeting = "hello";
console.log(greeting);
```
````

Supported languages include: `python`, `javascript`, `bash`, `json`, `html`,
`css`, `sql`, `go`, `rust`, `java`, `c`, `cpp`, and many more.

## 6. HTML in Markdown

You can embed raw HTML when Markdown isn't enough:

```markdown
<details>
<summary>Click to expand</summary>

Hidden content here. **Markdown works inside HTML blocks**
if you add blank lines.

</details>
```

## 7. Escaping Characters

Use backslash to escape Markdown characters:

```markdown
\*not italic\*
\# not a heading
\[not a link\]
```

## 8. Automatic URL Linking

Most parsers auto-link URLs:

```markdown
Visit https://example.com for more info.
```

---

## Key Takeaways

- Tables use pipes `|` and hyphens `-`
- Task lists use `- [ ]` and `- [x]`
- Not all parsers support all extensions — test your target platform
- HTML is your escape hatch for complex layouts
