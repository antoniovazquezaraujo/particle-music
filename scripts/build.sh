#!/bin/bash
# Build the LaTeX document with latexmk (uses lualatex)
# Output goes to latex/build/

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
TEX_DIR="$PROJECT_DIR/latex"

echo "Compiling with latexmk..."
cd "$TEX_DIR"
mkdir -p build

latexmk -lualatex -output-directory=build -interaction=nonstopmode particle-music.tex

PDF="build/particle-music.pdf"
if [ -f "$PDF" ]; then
    echo "Done! PDF: $PDF"
else
    echo "ERROR: Compilation failed."
    exit 1
fi
