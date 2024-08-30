#!/bin/bash

# Create a symlink with user confirmation.
create_symlink() {
  local source_path=$1
  local target_path=$2

  # Check if the target path already exists
  if [ -e "$target_path" ]; then
    if [ -L "$target_path" ]; then
      # Check if the symlink points to the correct source path
      if [ "$(readlink "$target_path")" == "$source_path" ]; then
        echo "$target_path is already a symlink to $source_path. Skipping."
      else
        echo "$target_path is a symlink but points to a different location."
        read -p "Do you want to replace it with a symlink to $source_path? [y/N]: " confirmation
        if [[ "$confirmation" =~ ^[Yy]$ ]]; then
          rm -rf "$target_path"
          ln -s "$source_path" "$target_path"
          echo "Replaced $target_path with a symlink to $source_path."
        else
          echo "Skipped creating symlink for $target_path."
        fi
      fi
    else
      # Ask for user confirmation if it's not a symlink
      read -p "$target_path already exists and is not a symlink. Do you want to replace it with a symlink to $source_path? [y/N]: " confirmation
      if [[ "$confirmation" =~ ^[Yy]$ ]]; then
        rm -rf "$target_path"
        ln -s "$source_path" "$target_path"
        echo "Replaced $target_path with a symlink to $source_path."
      else
        echo "Skipped creating symlink for $target_path."
      fi
    fi
  else
    # Create the symlink if the target path doesn't exist
    ln -s "$source_path" "$target_path"
    echo "Created symlink: $target_path -> $source_path."
  fi
}

echo "=== Install symlinks === "
create_symlink "$(pwd)/.config" "$HOME/.config"
create_symlink "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"
create_symlink "$(pwd)/.bash_aliases" "$HOME/.bash_aliases"

# Check and install tmux tpm if not present
install_tpm() {
  local tpm_path="$HOME/.tmux/plugins/tpm"

  # Check if TPM is already installed
  if [ ! -d "$tpm_path" ]; then
    # Ask for user confirmation if it's not installed
    read -p "Tmux Plugin Manager (TPM) is not installed. Do you want to install it? [y/N]: " confirmation
    if [[ "$confirmation" =~ ^[Yy]$ ]]; then
      echo "Cloning TPM..."
      git clone https://github.com/tmux-plugins/tpm "$tpm_path"
      echo "Tmux Plugin Manager (TPM) installed at $tpm_path."
    else
      echo "Skipped installing TPM."
    fi
  else
    echo "Tmux Plugin Manager (TPM) already installed at $tpm_path."
  fi
}

echo "=== Install TMUX Plugin Manager === "
install_tpm
