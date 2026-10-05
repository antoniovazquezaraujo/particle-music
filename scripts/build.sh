#!/bin/bash
# Build the LaTeX documents with latexmk (uses lualatex)
# Output goes to latex/build/

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
TEX_DIR="$PROJECT_DIR/latex"

cd "$TEX_DIR"
mkdir -p build

echo "Compiling Spanish manuscript..."
latexmk -lualatex -output-directory=build -interaction=nonstopmode particle-music.tex

echo "Compiling English translation..."
latexmk -lualatex -output-directory=build -interaction=nonstopmode translated-particle-music.tex

MISSING=0
for PDF in build/particle-music.pdf build/translated-particle-music.pdf; do
    if [ -f "$PDF" ]; then
        echo "Done! PDF: $PDF"
    else
        echo "ERROR: Missing $PDF"
        MISSING=1
    fi
done

if [ "$MISSING" -ne 0 ]; then
    exit 1
fi
