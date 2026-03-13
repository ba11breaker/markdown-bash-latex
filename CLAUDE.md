# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

A self-paced learning workspace for three skills: **Markdown**, **Bash**, and **LaTeX**. Each track has progressive modules containing lessons (`lesson.md`), exercises, and capstone projects. This is not a software project — it's educational material.

## Structure

- `LEARNING-PLAN.md` — master roadmap with timelines and module descriptions
- `markdown/` — 4 modules: basics, extended syntax, GitHub-Flavored Markdown, projects
- `bash/` — 8 modules: basics, variables, control flow, functions, text processing, file ops, networking, projects
- `latex/` — 7 modules: basics, math, documents, tables/figures, bibliography, presentations, projects

Each module follows the pattern: `NN-topic/lesson.md` + `exercise-*.{md,sh,tex}` + optional solutions.

## Common Commands

### Bash exercises (self-checking)
```bash
bash bash/01-basics/exercise-01-navigation.sh
```

### LaTeX compilation
```bash
pdflatex latex/01-basics/exercise-01-first-document.tex

# With bibliography:
pdflatex document.tex && bibtex document && pdflatex document.tex && pdflatex document.tex
```

### Markdown preview
Open `.md` files in VS Code (built-in preview: Cmd+Shift+V) or any Markdown viewer.

## Conventions

- Exercises use `# YOUR CODE HERE:` or `% TODO` markers where students fill in answers
- Bash exercises include verification sections that auto-check results
- LaTeX exercises are `.tex` files meant to be compiled with `pdflatex`
- Markdown exercises are `.md` files meant to be edited and previewed
- Solutions are prefixed with `solution-` in the same directory as the exercise
- Project briefs describe open-ended tasks; student work goes in the same folder

## Prerequisites

- macOS with Terminal/zsh
- LaTeX distribution: `brew install --cask mactex` (full) or `brew install basictex` (minimal)
