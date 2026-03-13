# Markdown Basics

Markdown is a lightweight markup language created by John Gruber in 2004.
It lets you write formatted text using plain text syntax.

---

## 1. Headings

Use `#` symbols to create headings. More `#` = smaller heading.

```markdown
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
```

## 2. Paragraphs and Line Breaks

Separate paragraphs with a blank line. For a line break within a paragraph,
end the line with two spaces or use `<br>`.

```markdown
This is paragraph one.

This is paragraph two.

This line has a
line break (two trailing spaces).
```

## 3. Emphasis

```markdown
*italic* or _italic_
**bold** or __bold__
***bold italic*** or ___bold italic___
~~strikethrough~~
```

## 4. Links

```markdown
[Link text](https://example.com)
[Link with title](https://example.com "Title")
<https://example.com>          <!-- autolink -->
[Reference link][ref-id]

[ref-id]: https://example.com
```

## 5. Images

```markdown
![Alt text](image.png)
![Alt text](image.png "Optional title")
```

## 6. Lists

### Unordered
```markdown
- Item one
- Item two
  - Nested item
  - Another nested
- Item three
```

### Ordered
```markdown
1. First
2. Second
3. Third
   1. Sub-item
```

## 7. Blockquotes

```markdown
> This is a blockquote.
>
> It can span multiple paragraphs.
>
> > And be nested.
```

## 8. Code

Inline code: `` `code` ``

Code block with triple backticks:

````markdown
```python
print("Hello, world!")
```
````

## 9. Horizontal Rules

Any of these create a horizontal line:

```markdown
---
***
___
```

---

## Key Takeaways

- Markdown is designed to be **readable as plain text**
- Most syntax is intuitive and mnemonic
- Different parsers may handle edge cases differently
- When in doubt, add blank lines between elements
