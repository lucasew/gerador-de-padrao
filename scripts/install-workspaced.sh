#!/bin/bash
set -e

# Clone and build workspaced if not present
if [ ! -f ~/.local/bin/workspaced ]; then
    echo "Installing workspaced..."
    TEMP_DIR=$(mktemp -d)
    git clone --depth 1 https://github.com/lucasew/workspaced "$TEMP_DIR"
    cd "$TEMP_DIR"
    go build -o ~/.local/bin/workspaced ./cmd/workspaced
    cd ..
    rm -rf "$TEMP_DIR"
    echo "workspaced installed to ~/.local/bin/workspaced"
else
    echo "workspaced already installed."
fi
