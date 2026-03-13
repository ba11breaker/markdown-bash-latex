# Bibliography in LaTeX

## 1. Basic Bibliography (thebibliography)

```latex
\begin{thebibliography}{9}
    \bibitem{knuth1984}
    Donald Knuth, \textit{The TeXbook}, Addison-Wesley, 1984.

    \bibitem{lamport1994}
    Leslie Lamport, \textit{LaTeX: A Document Preparation System}, 2nd ed., 1994.
\end{thebibliography}

% Usage in text:
As shown by Knuth \cite{knuth1984}...
```

## 2. BibTeX

Create a `.bib` file:
```bibtex
% references.bib
@article{einstein1905,
    author  = {Albert Einstein},
    title   = {On the Electrodynamics of Moving Bodies},
    journal = {Annalen der Physik},
    year    = {1905},
    volume  = {322},
    pages   = {891--921}
}

@book{knuth1984,
    author    = {Donald E. Knuth},
    title     = {The TeXbook},
    publisher = {Addison-Wesley},
    year      = {1984}
}
```

In your document:
```latex
\bibliographystyle{plain}  % or: abbrv, alpha, unsrt, ieeetr
\bibliography{references}  % references.bib (no extension)
```

## 3. Entry Types

| Type | Use for |
|------|---------|
| `@article` | Journal articles |
| `@book` | Books |
| `@inproceedings` | Conference papers |
| `@misc` | Websites, other |
| `@phdthesis` | PhD thesis |
| `@techreport` | Technical reports |

## 4. Compilation Order

```bash
pdflatex document
bibtex document
pdflatex document
pdflatex document
```

---

## Key Takeaways

- `.bib` files separate bibliography data from the document
- `\cite{key}` references entries; `\bibliography{}` includes them
- Compile multiple times for references to resolve
