# Power Profile Management Setup

## Overview
Power profile management has been added to allow switching between performance, balanced, and power-saver modes using a dedicated keybinding.

## Features

- **Cycle Power Profiles**: Press `Super + R` to cycle through available power profiles
- **Three Modes Available**:
  - **Performance**: Maximum performance, higher power consumption
  - **Balanced**: Balanced performance and power consumption
  - **Power Saver**: Lower power consumption, reduced performance
- **Notifications**: Visual notifications when switching profiles
- **Script Support**: Command-line interface for manual control

## Installation

### Package Required
- `power-profiles-daemon` - Added to `Scripts/pkg_extra.lst`

The package will be installed automatically during the extra packages installation phase.

### Service
After installation, enable and start the service:
```bash
systemctl --user enable power-profiles-daemon
systemctl --user start power-profiles-daemon
```

## Keybinding

| Key Combination | Action |
|----------------|--------|
| `Super + R` | Cycle to next power profile |

The keybinding cycles through available profiles in this order:
1. Performance
2. Balanced
3. Power Saver
4. (back to Performance)

## Script Usage

The power profile script is located at:
```
~/.local/lib/hyde/powerprofile.sh
```

### Command Line Options

```bash
# Cycle to next profile
powerprofile.sh cycle
powerprofile.sh c

# Set specific profile
powerprofile.sh performance
powerprofile.sh p
powerprofile.sh balanced
powerprofile.sh b
powerprofile.sh power-saver
powerprofile.sh s

# Get current profile
powerprofile.sh get
powerprofile.sh g

# List available profiles
powerprofile.sh list
powerprofile.sh l
```

### Examples

```bash
# Cycle to next profile
powerprofile.sh cycle

# Set to performance mode
powerprofile.sh performance

# Set to balanced mode
powerprofile.sh balanced

# Set to power saver mode
powerprofile.sh power-saver

# Check current profile
powerprofile.sh get
```

## Configuration Files Modified

1. **Scripts/pkg_extra.lst**: Added `power-profiles-daemon` package
2. **Configs/.local/lib/hyde/powerprofile.sh**: Created power profile management script
3. **Configs/.local/share/hyde/keybindings.conf**: Added `Super + R` keybinding
4. **Configs/.config/hypr/keybindings.conf**: Added `Super + R` keybinding
5. **Assets/KEYBINDINGS.md**: Updated documentation

## Notifications

When switching profiles, you'll receive a notification showing:
- Current profile name
- Profile icon (⚡ for performance, ⚖ for balanced, 🔋 for power-saver)

Notifications can be disabled by setting:
```bash
export POWER_PROFILE_NOTIFY=false
```

## Troubleshooting

### Power profiles not working

1. **Check if service is running**:
   ```bash
   systemctl --user status power-profiles-daemon
   ```

2. **Check if package is installed**:
   ```bash
   pacman -Q power-profiles-daemon
   ```

3. **Check available profiles**:
   ```bash
   powerprofilesctl list
   ```

4. **Manually set profile**:
   ```bash
   powerprofilesctl set performance
   powerprofilesctl set balanced
   powerprofilesctl set power-saver
   ```

### Script not found

If the script is not found, ensure it's executable:
```bash
chmod +x ~/.local/lib/hyde/powerprofile.sh
```

### Keybinding not working

1. **Reload Hyprland configuration**:
   ```bash
   hyprctl reload
   ```

2. **Check keybinding in config**:
   ```bash
   grep -A 1 "Power Profile" ~/.config/hypr/keybindings.conf
   ```

## Integration with Waybar

You can add a power profile indicator to Waybar by creating a custom module. The current profile can be checked with:
```bash
powerprofilesctl get
```

## Notes

- Power profiles require `power-profiles-daemon` to be installed and running
- Some systems may not support all three profiles (depends on hardware)
- The script automatically detects available profiles and cycles through them
- Notifications are enabled by default but can be disabled via environment variable

