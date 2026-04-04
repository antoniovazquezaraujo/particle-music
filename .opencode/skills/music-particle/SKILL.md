---
name: music-particle
description: Create particle visualizations showing stacked alternating scale degrees (0/1/2/3)
---

## What I do
- Generate particle diagrams showing chord/scale degree stacks
- Create inline particles for text and figure particles with captions
- Visualize triad structures as geometric relationships

## When to use me
Use this when visualizing a chord as a particle, showing degree stack structure, or comparing particle densities.

## Notation

Values represent stacked alternating degrees:
- `0` = empty (nullBox)
- `1` = small (smallBox, 0.2cm)
- `2` = big (bigBox, 0.4cm)
- `3` = black (blackBox, filled gray)

## Usage

### Inline particle
```latex
\iparticle{1,2,3,0,1}
```

### Particle with caption
```latex
\particle{1,2,3,0,1}{Description}{fig:particle-label}
```

## Examples

**Major triad** (minor/major structure):
```latex
\iparticle{2,1}
```

**Minor triad** (major/minor structure):
```latex
\iparticle{1,2}
```

**Tritone** (minor/minor):
```latex
\iparticle{1,1}
```

**4-note chord**:
```latex
\iparticle{2,1,2}
```

## Notes
- Particles stack vertically (bottom to top)
- Position 1 = base degree, Position 2 = next alternate, etc.
- Density (0/1/2/3) reflects the "weight" of the degree in the structure
