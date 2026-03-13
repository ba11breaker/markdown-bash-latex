# LaTeX Basics

LaTeX is a typesetting system for producing professional documents,
especially those with complex mathematical notation.

---

## 1. Document Structure

Every LaTeX document has this structure:

```latex
\documentclass[12pt,a4paper]{article}

% Preamble: packages and settings
\usepackage[utf8]{inputenc}
\usepackage{amsmath}

\title{My First Document}
\author{Your Name}
\date{\today}

\begin{document}

\maketitle

\section{Introduction}
Your content here.

\end{document}
```

## 2. Document Classes

| Class | Purpose |
|-------|---------|
| `article` | Short documents, papers |
| `report` | Longer documents with chapters |
| `book` | Full books |
| `letter` | Letters |
| `beamer` | Presentations/slides |

## 3. Text Formatting

```latex
\textbf{bold}
\textit{italic}
\underline{underlined}
\texttt{monospace}
\textsc{Small Caps}
{\Large Large text}
{\small small text}
```

Size commands (smallest to largest):
`\tiny`, `\scriptsize`, `\footnotesize`, `\small`, `\normalsize`,
`\large`, `\Large`, `\LARGE`, `\huge`, `\Huge`

## 4. Lists

```latex
% Unordered
\begin{itemize}
    \item First item
    \item Second item
    \item Third item
\end{itemize}

% Ordered
\begin{enumerate}
    \item First
    \item Second
    \item Third
\end{enumerate}

% Description
\begin{description}
    \item[Term] Definition
    \item[Another] Its definition
\end{description}
```

## 5. Essential Packages

| Package | Purpose |
|---------|---------|
| `amsmath` | Advanced math |
| `graphicx` | Images |
| `hyperref` | Clickable links |
| `geometry` | Page margins |
| `listings` | Code listings |
| `xcolor` | Colors |
| `booktabs` | Professional tables |
| `fancyhdr` | Custom headers/footers |

## 6. Special Characters

These characters have special meaning in LaTeX and must be escaped:

```latex
\#  \$  \%  \&  \{  \}  \_  \~{}  \^{}
```

## 7. Compiling

```bash
pdflatex document.tex    # Basic compilation
# Or for bibliography:
pdflatex document.tex
bibtex document
pdflatex document.tex
pdflatex document.tex
```

---

## Key Takeaways

- LaTeX separates content from presentation
- The preamble configures the document; the body contains content
- Packages extend LaTeX's capabilities
- Always compile to see your changes
