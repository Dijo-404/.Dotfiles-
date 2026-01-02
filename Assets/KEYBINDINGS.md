# Keybindings

> **Tip:** Press `Super + /` to show keybindings on screen.

---

## Table of Contents

- [Window Management](#window-management)
- [Misc](#misc)
- [Launcher](#launcher)
- [Hardware Controls](#hardware-controls)
- [Utilities](#utilities)
- [Theming and Wallpaper](#theming-and-wallpaper)
- [Workspaces](#workspaces)
- [Custom Keybindings](#custom-keybindings)

---

## Window Management

| Keys | Action |
| :--- | :----- |
| `Ctrl + Q` | close focused window |
| `Alt + F4` | close focused window |
| `Super + Delete` | kill hyprland session |
| `Super + W` | toggle float |
| `Super + G` | toggle group |
| `Shift + F11` | toggle fullscreen |
| `Super + L` | lock screen |
| `Super + Shift + F` | toggle pin on focused window |
| `Alt + Ctrl + Delete` | logout menu |
| `Alt + Control_R` | toggle waybar and reload config |
| `Super + J` | toggle split |

### Group Navigation

| Keys | Action |
| :--- | :----- |
| `Super + Ctrl + H` | change active group backwards |
| `Super + Ctrl + L` | change active group forwards |

### Change Focus

| Keys | Action |
| :--- | :----- |
| `Super + Left` | focus left |
| `Super + Right` | focus right |
| `Super + Up` | focus up |
| `Super + Down` | focus down |
| `Alt + Tab` | cycle focus |

### Resize Active Window

| Keys | Action |
| :--- | :----- |
| `Super + Shift + Right` | resize window right |
| `Super + Shift + Left` | resize window left |
| `Super + Shift + Up` | resize window up |
| `Super + Shift + Down` | resize window down |

### Move & Resize with Mouse

| Keys | Action |
| :--- | :----- |
| `Super + Left Click` | hold to move window |
| `Super + Right Click` | hold to resize window |
| `Super + Z` | hold to move window |
| `Super + X` | hold to resize window |

---

## Misc

| Keys | Action |
| :--- | :----- |
| `Super + Ctrl + Shift + Left` | move active window to the left |
| `Super + Ctrl + Shift + Right` | move active window to the right |
| `Super + Ctrl + Shift + Up` | move active window up |
| `Super + Ctrl + Shift + Down` | move active window down |

---

## Launcher

### Apps

| Keys | Action |
| :--- | :----- |
| `Super + T` | terminal emulator |
| `Super + Alt + T` | dropdown terminal |
| `Super + E` | file explorer |
| `Super + C` | text editor |
| `Super + B` | web browser |
| `Ctrl + Shift + Escape` | system monitor |

### Rofi Menus

| Keys | Action |
| :--- | :----- |
| `Super + A` | application finder |
| `Super + Tab` | window switcher |
| `Super + Shift + E` | file finder |
| `Super + /` | keybindings hint |
| `Super + ,` | emoji picker |
| `Super + .` | glyph picker |
| `Super + V` | clipboard |
| `Super + Shift + V` | clipboard manager |
| `Super + Shift + A` | select rofi launcher |

---

## Hardware Controls

### Audio

| Keys | Action |
| :--- | :----- |
| `F10` | toggle mute output |
| `XF86AudioMute` | toggle mute output |
| `F11` | decrease volume |
| `F12` | increase volume |
| `XF86AudioMicMute` | un/mute microphone |
| `XF86AudioLowerVolume` | decrease volume |
| `XF86AudioRaiseVolume` | increase volume |

### Media

| Keys | Action |
| :--- | :----- |
| `XF86AudioPlay` | play media |
| `XF86AudioPause` | pause media |
| `XF86AudioNext` | next media |
| `XF86AudioPrev` | previous media |

### Brightness

| Keys | Action |
| :--- | :----- |
| `XF86MonBrightnessUp` | increase brightness |
| `XF86MonBrightnessDown` | decrease brightness |

### Power Profile

| Keys | Action |
| :--- | :----- |
| `Super + R` | cycle power profile (performance/balanced/power-saver) |

---

## Utilities

| Keys | Action |
| :--- | :----- |
| `Super + K` | toggle keyboard layout |
| `Super + Alt + G` | game mode |

### Screen Capture

| Keys | Action |
| :--- | :----- |
| `Super + Shift + P` | color picker |
| `Super + P` | snip screen |
| `Super + Ctrl + P` | freeze and snip screen |
| `Super + Alt + P` | print monitor |
| `Print` | print all monitors |

---

## Theming and Wallpaper

| Keys | Action |
| :--- | :----- |
| `Super + Alt + Right` | next wallpaper |
| `Super + Alt + Left` | previous wallpaper |
| `Super + Shift + W` | select a wallpaper |
| `Super + Alt + Up` | next waybar layout |
| `Super + Alt + Down` | previous waybar layout |
| `Super + Shift + R` | wallbash mode selector |
| `Super + Shift + T` | select a theme |
| `Super + Shift + Y` | select animations |
| `Super + Shift + U` | select hyprlock layout |

---

## Workspaces

### Navigation

| Keys | Action |
| :--- | :----- |
| `Super + 1-0` | navigate to workspace 1-10 |
| `Super + Ctrl + Down` | navigate to the nearest empty workspace |
| `Super + Scroll Down` | next workspace |
| `Super + Scroll Up` | previous workspace |

### Relative Workspace

| Keys | Action |
| :--- | :----- |
| `Super + Ctrl + Right` | change active workspace forwards |
| `Super + Ctrl + Left` | change active workspace backwards |

### Special Workspace (Scratchpad)

| Keys | Action |
| :--- | :----- |
| `Super + Shift + S` | move to scratchpad |
| `Super + Alt + S` | move to scratchpad (silent) |
| `Super + S` | toggle scratchpad |

### Move Window to Workspace

| Keys | Action |
| :--- | :----- |
| `Super + Shift + 1-0` | move to workspace 1-10 |
| `Super + Alt + 1-0` | move to workspace 1-10 (silent) |
| `Super + Alt + Ctrl + Right` | move window to next relative workspace |
| `Super + Alt + Ctrl + Left` | move window to previous relative workspace |

---

## Custom Keybindings

Add custom keybindings in:

```bash
~/.config/hypr/userprefs.conf
```

Example:

```ini
bind = $mainMod, SPACE, exec, rofi -show drun
```
