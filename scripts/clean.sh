#!/bin/bash
# Clean all build artifacts

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
BUILD_DIR="$PROJECT_DIR/latex/build"

if [ -d "$BUILD_DIR" ]; then
    rm -rf "$BUILD_DIR"
    echo "Cleaned: $BUILD_DIR"
fi

# Also clean any stray aux files in latex/
for ext in aux log toc fdb_latexmk fls synctex.gz bak*; do
    find "$PROJECT_DIR/latex" -maxdepth 1 -name "particle-music.$ext" -delete 2>/dev/null
done

echo "Done."
