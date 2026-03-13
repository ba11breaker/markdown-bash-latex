# Presentations with Beamer

Beamer is LaTeX's class for creating presentation slides.

---

## 1. Basic Structure

```latex
\documentclass{beamer}
\usetheme{Madrid}        % Theme
\usecolortheme{default}  % Color scheme

\title{My Presentation}
\author{Your Name}
\date{\today}

\begin{document}

\begin{frame}
    \titlepage
\end{frame}

\begin{frame}{Outline}
    \tableofcontents
\end{frame}

\section{Introduction}

\begin{frame}{First Slide}
    Content here.
\end{frame}

\end{document}
```

## 2. Common Themes

`Madrid`, `Berlin`, `Copenhagen`, `Warsaw`, `Singapore`, `Boadilla`,
`Pittsburgh`, `Rochester`, `Malmoe`, `AnnArbor`

## 3. Slide Content

```latex
% Columns
\begin{frame}{Two Columns}
    \begin{columns}
        \begin{column}{0.5\textwidth}
            Left content
        \end{column}
        \begin{column}{0.5\textwidth}
            Right content
        \end{column}
    \end{columns}
\end{frame}

% Blocks
\begin{frame}{Blocks}
    \begin{block}{Regular Block}
        Content
    \end{block}
    \begin{alertblock}{Alert}
        Important content
    \end{alertblock}
    \begin{exampleblock}{Example}
        Example content
    \end{exampleblock}
\end{frame}
```

## 4. Overlays (Animations)

```latex
\begin{frame}{Step by Step}
    \begin{itemize}
        \item<1-> First point (visible from slide 1)
        \item<2-> Second point (visible from slide 2)
        \item<3-> Third point (visible from slide 3)
    \end{itemize}

    \pause  % Simple alternative

    This appears after a pause.
\end{frame}
```

---

## Key Takeaways

- `beamer` uses `frame` environments instead of sections
- Themes control the visual style
- Overlays (`\pause`, `<n->`) create step-by-step reveals
- Blocks organize content into labeled boxes
