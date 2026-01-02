# Fish Shell Removal

## Summary
Removed all Fish shell configurations and references since only Zsh with Kitty is being used.

## Changes Made

### 1. Package Lists
- **Scripts/pkg_core.lst**: Removed `starship|fish` entry
- **Scripts/pkg_extra.lst**: Removed all fish-related package entries (bat|fish, eza|fish, duf|fish)

### 2. Installation Scripts
- **Scripts/global_fn.sh**: Removed `fish` from `shlList` array (now only contains `zsh`)
- **Scripts/install.sh**: Removed fish option from shell selection menu (now defaults to zsh only)

### 3. Configuration Restoration
- **Scripts/restore_cfg.psv**: Removed fish config restoration entries
- **Scripts/restore_cfg.lst**: Removed fish config entry

### 4. Configuration Files
- **Configs/.config/fish/**: Entire directory removed

## Current Shell Setup

- **Shell**: Zsh only
- **Prompt**: Starship (for zsh)
- **Terminal**: Kitty
- **Editor**: Neovim (LazyVim), Kate, VS Code

## Verification

All fish references have been removed from:
- Package installation lists
- Shell selection scripts
- Configuration restoration scripts
- Configuration files directory

The system now exclusively uses Zsh with Kitty terminal.

