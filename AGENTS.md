# Particle Music - Project Guide

## 🎯 Overview
**"Música de Partículas"** - Un nuevo marco para la comprensión de la armonía musical  
**Author:** Antonio Vázquez Araújo  
**Status:** Work in progress (PDF available in GitHub releases)

## 📁 Key Files

| File | Purpose |
|------|---------|
| `latex/particle-music.tex` | Main LaTeX manuscript (~959 lines) |
| `latex/particle-music.pdf` | Latest compiled version |
| `Ideas.adoc` | Pending ideas, notes, and outline |
| `README.md` | Brief project description |
| `AGENTS.md` | This file - project instructions |

## 🔧 Compilation

```bash
# REQUIRED: LuaLaTeX (pgf graphdrawing needs LuaTeX)
lualatex latex/particle-music.tex
```

⚠️ **Do NOT use pdflatex** - will fail on TikZ graphdrawing library

## 📚 Core Theory Summary

### Six Fundamental Scales
- **WHITE** - Diatonic (7 notes, 1 tritone, centered on RE)
- **BLUE** - Melodic minor (7 notes, 1 tritone)
- **RED** - Harmonic minor (7 notes, 2 tritones)
- **BLACK** - Diminished (8 notes, space-centered symmetry)
- **PENTA** - Pentatonic (5 notes, 0 tritones)
- **TONES** - Whole tone (6 notes, multiple tritones)

### Notation System
- Scales shown as 3×5 grids with central note/space at center
- Modes numbered **-3 to +3** (not Greek names)
- **Particle notation**: Stacks of alternating degrees (0=empty, 1=small, 2=big, 3=black)
- Notes: A-G with lowercase for flats (a = A#/Bb)

### Key Concepts
- **Symmetric orientation** - Scales centered on geometric center, NOT tonic
- **Tritone distance** - Determines stability/tension of scale degrees
- **Triads as geometry** - Major/minor as small/large stacking relationships

## 📋 Current Priorities

### High
1. Integrate `Ideas.adoc` content into main document
2. Add pentatonic scales section (3 variants from WHITE)
3. Blue note integration analysis
4. Quartal harmony structures

### Medium
5. Write full introduction chapter (qué es, quién soy, por qué lo hago)
6. Add musical examples to each theory section
7. Comparison tables: Traditional vs Particle notation

### Low
8. Optimize TikZ code for faster compilation
9. Create concept map/visual outline
10. Add exercises/practice section

## 🛠️ Common Tasks

### Edit main document
```bash
# Read current state
read latex/particle-music.tex

# Check pending ideas
read Ideas.adoc

# After changes: compile
lualatex latex/particle-music.tex
```

### Check recent changes
```bash
git log --oneline -10
git status
```

## 🎨 TikZ Conventions

- All scale diagrams: 3-column × 5-row grid (positions 11-35)
- Styles: `st` (gray), `st=white` (white)
- Particles: `\iparticle{1,2,3,0,1}` (inline) or `\particle{args}{caption}{label}`
- All figures: `baseline=(current bounding box.center)`

## ℹ️ When Starting New Session

1. Read this file (AGENTS.md)
2. Read `latex/particle-music.tex` to see current state
3. Check `Ideas.adoc` for pending topics
4. Ask user which priority to tackle

## 📝 Writing Guidelines

- **Tone:** Academic but accessible, Spanish
- **Voice:** Direct, uses analogies and real-world examples
- **Structure:** Examples before abstraction
- **Terminology:** Consistent - avoid switching between "grado"/"nota"

## ⚠️ Common Issues

- Overfull hbox in figures with subcaptions → adjust widths
- Missing `\phantomsection` breaks TOC anchors
- Table width exceeds textwidth → use `\resizebox`
- TikZ baseline misalignment → check `baseline=` option

## 🤖 Agents

Agents are specialized configurations for different types of work. Located in `.opencode/agents/`:

| Agent | File | Purpose |
|-------|------|---------|
| LaTeX Editor | `latex-editor.md` | Edits and maintains the main document |
| TikZ Artist | `tikz-artist.md` | Creates scale diagrams and particle visualizations |
| Content Integrator | `content-integrator.md` | Integrates pending ideas from Ideas.adoc |
| Theory Reviewer | `theory-reviewer.md` | Reviews theoretical coherence and terminology |

## 🛠️ Skills

Skills are reusable workflows for common tasks. Located in `.opencode/skills/`:

| Skill | File | Purpose |
|-------|------|---------|
| Compile LaTeX | `compile-latex.md` | Compile with lualatex and diagnose errors |
| TikZ Scale Diagram | `tikz-scale-diagram.md` | Generate 3×5 grid scale diagrams |
| Music Particle | `music-particle.md` | Create particle visualizations (0/1/2/3 stacks) |
| Integrate Idea | `integrate-idea.md` | Process for integrating Ideas.adoc content |

## 🎯 Project Goals

1. Provide clearer explanations than traditional theory
2. Replace arbitrary rules with physical/mathematical reasoning
3. Create notation that reveals scale symmetry
4. Make harmony accessible without losing precision