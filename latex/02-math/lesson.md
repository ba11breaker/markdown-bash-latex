# LaTeX Math

LaTeX is the gold standard for mathematical typesetting.

---

## 1. Inline vs Display Math

```latex
% Inline math
The formula $E = mc^2$ is famous.

% Display math (centered, own line)
\[ E = mc^2 \]

% Numbered equation
\begin{equation}
    E = mc^2
\end{equation}
```

## 2. Common Notation

```latex
% Superscript and subscript
x^2          x^{10}        x_i          x_{ij}

% Fractions
\frac{a}{b}       \dfrac{a}{b}  (display style)

% Square root
\sqrt{x}          \sqrt[3]{x}   (cube root)

% Greek letters
\alpha \beta \gamma \delta \epsilon \theta \lambda \mu
\pi \sigma \phi \omega
\Gamma \Delta \Theta \Lambda \Sigma \Phi \Omega

% Operators
\sum_{i=1}^{n}    \prod_{i=1}^{n}    \int_{a}^{b}
\lim_{x \to \infty}    \log    \sin    \cos    \tan
```

## 3. Brackets and Delimiters

```latex
% Auto-sizing brackets
\left( \frac{a}{b} \right)
\left[ x^2 \right]
\left\{ a, b, c \right\}
\left| x \right|
```

## 4. Matrices

```latex
\begin{pmatrix}    % () brackets
    a & b \\
    c & d
\end{pmatrix}

\begin{bmatrix}    % [] brackets
    1 & 0 \\
    0 & 1
\end{bmatrix}

\begin{vmatrix}    % || brackets (determinant)
    a & b \\
    c & d
\end{vmatrix}
```

## 5. Aligned Equations

```latex
\begin{align}
    f(x) &= x^2 + 2x + 1 \\
         &= (x + 1)^2
\end{align}

% No numbering
\begin{align*}
    a &= b + c \\
    d &= e + f
\end{align*}
```

## 6. Cases (Piecewise Functions)

```latex
f(x) = \begin{cases}
    x^2  & \text{if } x \geq 0 \\
    -x   & \text{if } x < 0
\end{cases}
```

## 7. Common Symbols

```latex
\leq  \geq  \neq  \approx  \equiv  \sim
\in  \notin  \subset  \supset  \cup  \cap
\forall  \exists  \nexists
\infty  \partial  \nabla
\cdot  \times  \div  \pm  \mp
\rightarrow  \leftarrow  \Rightarrow  \Leftrightarrow
\ldots  \cdots  \vdots  \ddots
```

---

## Key Takeaways

- Use `$ $` for inline math, `\[ \]` for display math
- `\frac{}{}` for fractions, `^` and `_` for super/subscripts
- `\left` and `\right` auto-size delimiters
- `align` environment for multi-line aligned equations
