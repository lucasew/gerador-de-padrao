#!/bin/bash
set -e

# Clone and build workspaced if not present
if [ ! -f "$HOME/.local/bin/workspaced" ]; then
    echo "Installing workspaced..."
    mkdir -p "$HOME/.local/bin"
    TEMP_DIR=$(mktemp -d)
    git clone --depth 1 https://github.com/lucasew/workspaced "$TEMP_DIR"
    cd "$TEMP_DIR"
    # Ensure dependencies are downloaded
    go mod download
    go build -o "$HOME/.local/bin/workspaced" ./cmd/workspaced
    cd ..
    rm -rf "$TEMP_DIR"
    echo "workspaced installed to $HOME/.local/bin/workspaced"
else
    echo "workspaced already installed."
fi
