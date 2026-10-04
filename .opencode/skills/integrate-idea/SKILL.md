---
name: integrate-idea
description: Process for integrating pending ideas from Ideas.adoc into the main LaTeX document
---

## What I do
- Identify pending ideas in `Ideas.adoc`
- Plan where they fit in the current document structure
- Draft new content following the project's tone and style
- Compile and verify the integration

## When to use me
Use this when working on a pending idea from `Ideas.adoc`, advancing project priorities, or planning new content integration.

## Process

### 1. Identify the idea
Read `Ideas.adoc` and find the idea to integrate. Identify:
- What new content is needed
- Where it fits in the current structure
- If new figures/tables are required

### 2. Locate insertion point
Read `latex/particle-music.tex` to find:
- The closest section/subsection
- The logical flow of content
- Existing cross-references

### 3. Prepare content
- Write in accessible academic Spanish
- Use analogies and examples before abstraction
- Maintain consistent terminology
- Create figures/tables if needed

### 4. Insert and compile
- Add content to `.tex`
- Compile with `lualatex`
- Verify no errors

### 5. Update Ideas.adoc
- Mark idea as integrated or in progress
- Move to "Completed" section if applicable

## Current priorities

### High
1. Pentatonic scales section (3 variants from WHITE)
2. Blue note analysis as symmetric additional note
3. Quartal harmony structures
4. Main ideas outline/map

### Medium
5. Full introduction (what is this, who am I, why)
6. Musical examples per section
7. Comparison tables: traditional vs particle

### Low
8. TikZ code optimization
9. Visual concept map
10. Exercises section
