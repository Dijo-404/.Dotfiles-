# VS Code and Discord Update

## Summary
Updated dotfiles to use VS Code (visual-studio-code-bin) instead of Code-OSS, and added Discord instead of Webcord.

## Changes Made

### 1. Package Lists
- **Scripts/pkg_core.lst**: 
  - Changed `code` → `visual-studio-code-bin` (VS Code IDE)
  - Added `discord` (Discord chat application)

### 2. Configuration Restoration
- **Scripts/restore_cfg.psv**: 
  - Removed Code-OSS config restoration entry
  - Kept only `visual-studio-code-bin` config restoration
  - Removed duplicate `code-flags.conf` entry for code-oss

- **Scripts/restore_cfg.lst**: 
  - Removed Code-OSS config entries
  - Kept only `visual-studio-code-bin` entries

### 3. Window Rules
- **windowrules.conf**: 
  - Changed `code-oss` → `code` (VS Code uses `code` as class name)
  - Added `discord` window rule for opacity

- **Configs/.local/share/hyde/templates/hypr/windowrules.conf**: 
  - Changed `code-oss` → `code`
  - Added `discord` window rule

### 4. Waybar Window Titles
- **Configs/.local/share/waybar/modules/hyprland-window.jsonc**: 
  - Kept Code-OSS references for backwards compatibility (display names only)

## Current Setup

### Editors
- **VS Code**: `visual-studio-code-bin` (primary IDE)
- **Neovim**: LazyVim (terminal editor)
- **Kate**: KDE advanced text editor

### Communication
- **Discord**: Native Discord application
- **Firefox**: Web browser

## Verification

All changes verified:
- VS Code package: `visual-studio-code-bin` in core packages
- Discord package: `discord` in core packages
- Code-OSS references removed from restoration scripts
- Window rules updated for VS Code and Discord
- Configuration files updated

## Notes

- VS Code uses `code` as the window class name (not `code-oss`)
- Discord window class is `discord`
- Waybar window title formatting still includes Code-OSS for backwards compatibility
- All configuration restoration now points to VS Code only

