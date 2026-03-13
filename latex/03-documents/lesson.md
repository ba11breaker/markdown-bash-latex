# Document Structure in LaTeX

## 1. Sectioning

```latex
\part{Part Title}           % Only in report/book
\chapter{Chapter Title}     % Only in report/book
\section{Section}
\subsection{Subsection}
\subsubsection{Subsubsection}
\paragraph{Paragraph}
\subparagraph{Subparagraph}
```

## 2. Table of Contents

```latex
\tableofcontents    % Auto-generated from sections
\listoffigures      % Auto-generated from figures
\listoftables       % Auto-generated from tables
```

Requires compiling **twice** to generate.

## 3. Page Layout (geometry package)

```latex
\usepackage[
    top=2.5cm,
    bottom=2.5cm,
    left=3cm,
    right=3cm
]{geometry}
```

## 4. Headers and Footers (fancyhdr)

```latex
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}                        % Clear defaults
\fancyhead[L]{Left Header}
\fancyhead[C]{Center Header}
\fancyhead[R]{Right Header}
\fancyfoot[C]{\thepage}           % Page number
\renewcommand{\headrulewidth}{0.4pt}
```

## 5. Cross-References

```latex
\section{Introduction}
\label{sec:intro}

As we discussed in Section~\ref{sec:intro} on page~\pageref{sec:intro}.
```

## 6. Footnotes

```latex
This needs clarification\footnote{Here is the clarification.}.
```

## 7. Abstract

```latex
\begin{abstract}
    This paper discusses...
\end{abstract}
```

---

## Key Takeaways

- LaTeX handles numbering and cross-references automatically
- Compile twice for TOC and references to resolve
- `geometry` for margins, `fancyhdr` for headers
- Use `\label` and `\ref` instead of hardcoding numbers
