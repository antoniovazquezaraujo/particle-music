---
name: tikz-scale-diagram
description: Generate 3x5 grid scale diagrams for the six fundamental scales and their modes
---

## What I do
- Create TikZ diagrams for scales in the 3x5 grid format
- Generate mode visualizations (-3 to +3)
- Maintain visual consistency across all scale figures

## When to use me
Use this when drawing a new scale, showing a mode, or comparing scales visually.

## Grid format (3x5)

```
(15) (25) (35)  <- row 5 (top)
(14)      (34)  <- row 4
(13)      (33)  <- row 3 (center)
(12)      (32)  <- row 2
(11) (21) (31)  <- row 1 (bottom)
```

## Base template

```latex
\begin{tikzpicture}
  [st/.style={
    rectangle,
    minimum size=.5cm,
    node distance=.5cm,
    inner sep = 0cm,
    draw=black,thick,fill=#1!50,
    font=\sffamily
    },
  st/.default=gray]

  \node (15)[st                   ] {4}; \node (25) [st=white, right of=15] { }; \node (35) [st,       right of= 25] {5};
  \node (14)[st=white,below of= 15] { };                                         \node (34) [st=white, below of= 35] { };
  \node (13)[st,      below of= 14] {3};                                         \node (33) [st,       below of= 34] {6};
  \node (12)[st,      below of= 13] {2};                                         \node (32) [st,       below of= 33] {7};
  \node (11)[st=white,below of= 12] { }; \node (21) [st,       right of=11] {1}; \node (31) [st=white, right of= 21] { };

\end{tikzpicture}
```

## Rules
- Empty cells: `st=white` with content `{ }`
- Cells with note: `st` (gray) with number/letter
- Center of grid always visually empty in notation
- For BLACK scale, center is a space between notes, not a note
- Always `baseline=(current bounding box.center)` in figures
- Subfigure width: `0.23\textwidth` for 4 columns, `0.3\textwidth` for 3
- Spacing between subfigure rows: `\\[2em]`
