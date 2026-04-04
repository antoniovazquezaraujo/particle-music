---
name: compile-latex
description: Compile the LaTeX document with lualatex and diagnose errors
---

## What I do
- Compile `latex/particle-music.tex` with lualatex
- Diagnose compilation errors from the log
- Report overfull hbox warnings

## When to use me
Use this after editing the main document or when the user asks to compile/generate the PDF.

## How to compile

```bash
lualatex -interaction=nonstopmode latex/particle-music.tex
```

## Diagnose errors

```bash
rg "^(!|.*Error)" latex/particle-music.log
```

## Check warnings

```bash
rg "Overfull" latex/particle-music.log
```

## Common errors

| Error | Cause | Solution |
|-------|-------|----------|
| `require LuaLaTeX` | Used pdflatex | Use `lualatex` |
| `Overfull \hbox` | Table/figure too wide | Use `\resizebox` or reduce width |
| `Undefined control sequence` | Macro not defined | Check package is loaded |
| `Missing \endcsname` | Special char in label | Use only letters, numbers, hyphens |
| `Duplicate destination` | Duplicate labels | Make labels unique |

## Notes
- First compilation may take 30-60 seconds
- May need 2 passes for cross-references
- Working directory: project root
