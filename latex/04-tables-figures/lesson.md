# Tables and Figures in LaTeX

## 1. Basic Tables

```latex
\begin{tabular}{|l|c|r|}
    \hline
    Left & Center & Right \\
    \hline
    A & B & C \\
    D & E & F \\
    \hline
\end{tabular}
```

Column types: `l` (left), `c` (center), `r` (right), `p{width}` (paragraph)

## 2. Professional Tables (booktabs)

```latex
\usepackage{booktabs}

\begin{tabular}{lcc}
    \toprule
    Name & Score & Grade \\
    \midrule
    Alice & 95 & A \\
    Bob & 82 & B \\
    Carol & 91 & A \\
    \bottomrule
\end{tabular}
```

## 3. Floating Tables

```latex
\begin{table}[htbp]
    \centering
    \caption{Experimental Results}
    \label{tab:results}
    \begin{tabular}{lcc}
        \toprule
        ...
        \bottomrule
    \end{tabular}
\end{table}
```

Placement: `h` (here), `t` (top), `b` (bottom), `p` (page of floats)

## 4. Figures

```latex
\usepackage{graphicx}

\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{image.png}
    \caption{A descriptive caption}
    \label{fig:myimage}
\end{figure}
```

## 5. Subfigures

```latex
\usepackage{subcaption}

\begin{figure}[htbp]
    \centering
    \begin{subfigure}{0.45\textwidth}
        \includegraphics[width=\textwidth]{img1.png}
        \caption{First image}
    \end{subfigure}
    \hfill
    \begin{subfigure}{0.45\textwidth}
        \includegraphics[width=\textwidth]{img2.png}
        \caption{Second image}
    \end{subfigure}
    \caption{Both images together}
\end{figure}
```

---

## Key Takeaways

- Use `booktabs` for professional tables (no vertical lines)
- Always use `\label` after `\caption` for correct references
- Float placement `[htbp]` lets LaTeX choose the best position
- `\centering` inside floats, not the `center` environment
