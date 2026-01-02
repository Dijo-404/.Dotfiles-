# Automatic Service Setup

## Overview
All required services are now automatically enabled and started during installation, so you don't need to run any commands manually.

## Services Automatically Enabled

### System Services (Root)
- **tlp** - Advanced power management (enabled and started)
- **NetworkManager** - Network management (enabled and started)
- **bluetooth** - Bluetooth support (enabled and started)
- **sddm** - Display manager (enabled)

### User Services
- **power-profiles-daemon** - Power profile management (enabled and started)
- **libinput-gestures** - Touchpad gestures (enabled and started)

## How It Works

During installation, the script automatically:
1. Checks if each service is installed
2. Enables the service (starts on boot)
3. Starts the service immediately (with `enable --now`)

## Service Configuration

Services are configured in `Scripts/restore_svc.lst` with the format:
```
service|context|command
```

Where:
- **service**: Service name (without .service suffix)
- **context**: `root` (system-wide) or `user` (user-specific)
- **command**: `enable --now` (enable and start immediately)

## What Happens During Installation

When you run `./install.sh`:
1. Packages are installed
2. Configurations are restored
3. **Services are automatically enabled and started** (no manual steps needed!)

## Manual Service Management (Optional)

If you need to manually manage services later:

### Check Service Status
```bash
# System services
sudo systemctl status tlp
sudo systemctl status NetworkManager

# User services
systemctl --user status power-profiles-daemon
systemctl --user status libinput-gestures
```

### Restart Services
```bash
# System services
sudo systemctl restart tlp

# User services
systemctl --user restart power-profiles-daemon
```

### Disable Services (if needed)
```bash
# System services
sudo systemctl disable tlp

# User services
systemctl --user disable power-profiles-daemon
```

## Troubleshooting

### Service Not Starting

If a service fails to start:

1. **Check if package is installed:**
   ```bash
   pacman -Q tlp power-profiles-daemon libinput-gestures
   ```

2. **Check service status:**
   ```bash
   sudo systemctl status tlp
   systemctl --user status power-profiles-daemon
   ```

3. **Check service logs:**
   ```bash
   sudo journalctl -u tlp -n 50
   journalctl --user -u power-profiles-daemon -n 50
   ```

4. **Manually enable/start:**
   ```bash
   sudo systemctl enable --now tlp
   systemctl --user enable --now power-profiles-daemon
   ```

### User Services Not Working

User services require:
- D-Bus session: `DBUS_SESSION_BUS_ADDRESS` must be set
- Runtime directory: `XDG_RUNTIME_DIR` must be set

These are usually set automatically when logged in, but if services fail:
```bash
# Check environment
echo $DBUS_SESSION_BUS_ADDRESS
echo $XDG_RUNTIME_DIR

# Restart user services after login
systemctl --user daemon-reexec
```

## Service Dependencies

### TLP
- Requires: `tlp` and `tlp-rdw` packages
- Automatically manages power based on AC/battery
- Works with power-profiles-daemon (auto mode)

### power-profiles-daemon
- Requires: `power-profiles-daemon` package
- Provides manual power profile switching
- Works with TLP in auto mode

### libinput-gestures
- Requires: `libinput-gestures` package
- Provides touchpad gesture support
- Configuration: `~/.config/libinput-gestures.conf`

## Notes

- All services are enabled automatically during installation
- No manual commands needed after installation
- Services start immediately and persist across reboots
- User services only work when logged in (not in early boot)

