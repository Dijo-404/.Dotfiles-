# Notification System Improvements

## Overview
Enhanced the Dunst notification daemon configuration for better user experience, visual appeal, and functionality.

## Key Improvements

### 1. Better Positioning and Sizing
- Dynamic width: `(280, 380)` pixels for better readability
- Increased offset: `(30, 30)` for better visibility
- Follow keyboard focus instead of mouse for better UX
- Reduced notification limit to 8 for cleaner display

### 2. Enhanced Visual Design
- Increased corner radius: `16px` for modern look
- Better padding: `12px` vertical, `16px` horizontal
- Improved gap size: `8px` between notifications
- Icon corner radius: `12px` for rounded icons
- Frame width: `3px` for subtle borders
- Transparency: `15%` for better visibility

### 3. Better Text Formatting
- Enhanced format: `<b>%s</b>\n%b` (bold title, body below)
- Word wrap enabled for long messages
- Improved line height: `4px` for better readability
- Better icon padding: `16px` between icon and text

### 4. Improved Progress Bars
- Height: `8px` (more visible)
- Corner radius: `6px` (rounded)
- Width range: `150-300px` (better visibility)

### 5. Enhanced Functionality
- Increased history: `50` notifications (was 20)
- Better icon sizing: `48-96px` range
- Keyboard focus following (better for multi-monitor)
- Layer: `overlay` for Wayland fullscreen support

### 6. Application-Specific Rules
- Slack, Telegram, Skype: Custom icons and timeouts
- Firefox: Optimized timeout
- System updates: Longer timeout (15s)
- Battery: Critical urgency, no timeout
- Volume/Brightness: Low urgency, short timeout (2s)
- Screenshots: Short timeout (3s)

### 7. Fullscreen Handling
- Critical notifications: Always show (even in fullscreen)
- Normal notifications: Delay until fullscreen ends
- Low notifications: Delay until fullscreen ends

### 8. Mouse Actions
- Left click: Context menu + close
- Middle click: Perform action + close
- Right click: Close all notifications

## Usage

### Test Notifications
```bash
# Normal notification
notify-send "Test" "This is a normal notification"

# Critical notification
notify-send "Alert" "This is critical!" -u critical

# Low priority
notify-send "Info" "This is low priority" -u low

# With icon
notify-send "Volume" "Volume changed" -i audio-volume-high

# With progress
dunstify -h int:value:50 "Progress" "50% complete"
```

### Control Notifications
```bash
# Close all notifications
dunstctl close-all

# Show history
dunstctl history-pop

# Pause notifications
dunstctl set-paused true

# Resume notifications
dunstctl set-paused false

# Get notification count
dunstctl count
```

### Reload Configuration
After editing `~/.config/dunst/dunst.conf`:
```bash
killall dunst && dunst &
```

Or if using wallbash:
```bash
hyde-shell wallbash dunst
```

## Integration with Waybar

The notification system integrates with waybar through the `custom-dunst` module, allowing you to:
- See notification count
- Control notification daemon
- Access notification history

## Customization

### Change Colors
Colors are managed by wallbash and theme system. To customize:
1. Edit `~/.config/dunst/dunst.conf` (user overrides)
2. Run `hyde-shell wallbash dunst` to regenerate

### Change Position
Edit `~/.config/dunst/dunst.conf`:
```ini
origin = top-right  # Options: top-left, top-center, top-right, etc.
offset = (30, 30)   # X, Y offset in pixels
```

### Change Timeouts
Edit urgency sections or application rules:
```ini
[urgency_normal]
timeout = 5  # seconds
```

## Benefits

1. **Better Visibility**: Larger, more readable notifications
2. **Cleaner Display**: Fewer notifications shown at once
3. **Smart Behavior**: Application-specific rules and fullscreen handling
4. **Modern Look**: Rounded corners, better spacing, improved typography
5. **Better UX**: Keyboard focus following, word wrap, enhanced actions
