#!/bin/bash

# Define the source directory (where the script is located)
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# List of files to symlink
FILES=(
    ".zshrc"
    ".gitconfig"
)

# Symlink each file
for file in "${FILES[@]}"; do
    ln -sf "$DOTFILES_DIR/$file" "$HOME/$file"
    echo "Linked $file"
done
