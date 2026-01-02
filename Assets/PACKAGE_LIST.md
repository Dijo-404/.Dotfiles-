# Complete Package Installation List

## Overview
This document lists all packages that will be installed by the dotfiles installation script.

**Total Packages:**
- Core Packages: 75
- Extra Packages: 15
- Flatpak Packages: 6
- **Grand Total: 96 packages**

---

## Core Packages (75)

### System
1. `uwsm` - A standalone Wayland session manager
2. `pipewire` - audio/video server
3. `pipewire-alsa` - pipewire alsa client
4. `pipewire-audio` - pipewire audio client
5. `pipewire-jack` - pipewire jack client
6. `pipewire-pulse` - pipewire pulseaudio client
7. `gst-plugin-pipewire` - pipewire gstreamer client
8. `wireplumber` - pipewire session manager
9. `pavucontrol` - pulseaudio volume control
10. `pamixer` - pulseaudio cli mixer
11. `networkmanager` - network manager
12. `network-manager-applet` - network manager system tray utility
13. `bluez` - bluetooth protocol stack
14. `bluez-utils` - bluetooth utility cli
15. `blueman` - bluetooth manager gui
16. `brightnessctl` - screen brightness control
17. `playerctl` - media controls
18. `udiskie` - manage removable media

### Display Manager
19. `sddm` - display manager for KDE plasma
20. `qt5-quickcontrols` - for sddm theme ui elements
21. `qt5-quickcontrols2` - for sddm theme ui elements
22. `qt5-graphicaleffects` - for sddm theme effects

### Window Manager
23. `hyprland` - wlroots-based wayland compositor
24. `dunst` - notification daemon
25. `rofi` - application launcher
26. `waybar` - system bar
27. `swww` - wallpaper
28. `hyprlock` - lock screen
29. `wlogout` - logout menu
30. `grim` - screenshot tool
31. `hyprpicker` - color picker
32. `slurp` - region select for screenshot/screenshare
33. `satty` - Modern Screenshot Annotation
34. `cliphist` - clipboard manager
35. `wl-clip-persist` - Keep Wayland clipboard even after programs close (avoids crashes)
36. `hyprsunset` - blue light filter

### Dependencies
37. `polkit-gnome` - authentication agent
38. `xdg-desktop-portal-hyprland` - xdg desktop portal for hyprland
39. `xdg-desktop-portal-gtk` - file picker and dbus integration
40. `xdg-user-dirs` - Manage user directories like ~/Desktop and ~/Music
41. `pacman-contrib` - for system update check
42. `parallel` - for parallel processing
43. `jq` - for json processing
44. `imagemagick` - for image processing
45. `qt5-imageformats` - for dolphin image thumbnails
46. `ffmpegthumbs` - for dolphin video thumbnails
47. `kde-cli-tools` - for dolphin file type defaults
48. `libnotify` - for notifications
49. `noto-fonts-emoji` - emoji font
50. `libinput-gestures` - touchpad gestures support

### Theming
51. `nwg-look` - gtk configuration tool
52. `qt5ct` - qt5 configuration tool
53. `qt6ct` - qt6 configuration tool
54. `kvantum` - svg based qt6 theme engine
55. `kvantum-qt5` - svg based qt5 theme engine
56. `qt5-wayland` - wayland support in qt5
57. `qt6-wayland` - wayland support in qt6

### Applications
58. `firefox` - browser
59. `kitty` - terminal
60. `dolphin` - kde file manager
61. `ark` - kde file archiver
62. `unzip` - extracting zip files
63. `neovim` - terminal text editor
64. `kate` - kde advanced text editor
65. `visual-studio-code-bin` - VS Code IDE
66. `discord` - Discord chat application
67. `nwg-displays` - monitor management utility
68. `fzf` - Command-line fuzzy finder

### Dev Tools
69. `git` - version control system
70. `docker` - container runtime
71. `lazygit` - terminal ui for git
72. `lazydocker` - terminal ui for docker

### Shell
73. `starship|zsh` - customizable shell prompt written in Rust
74. `fastfetch` - system information fetch tool

### 404 Project
75. `hypridle` - idle daemon

---

## Extra Packages (15)

### System
1. `wttrbar` - for weather
2. `python-requests|wttrbar` - script dependency
3. `ddcui` - GUI to control brightness for external monitors

### Misc
4. `xdg-desktop-portal-gtk` - xdg desktop portal using gtk
5. `wf-recorder` - Screen recorder for wlroots-based compositors such as sway

### Gaming
6. `steam` - gaming platform
7. `gamemode` - daemon and library for game optimizations
8. `mangohud` - system performance overlay

### Music
9. `cava` - audio visualizer
10. `spotify` - proprietary music streaming service
11. `spicetify-cli` - cli to customize spotify client

### Shell (zsh)
12. `bat|zsh` - enhanced version of cat
13. `eza|zsh` - file lister for zsh
14. `duf|zsh` - prettier version of df for zsh

### OSD
15. `swayosd-git` - A GTK based on screen display for keyboard shortcuts like caps-lock and volume

---

## Flatpak Packages (6)

### System
1. `org.gnome.Boxes` - Boxes
2. `io.missioncenter.MissionCenter` - MissionCenter
3. `io.gitlab.adhami3310.Impression` - Impression

### Photography
4. `org.gnome.eog` - ImageViewer

### Audio/Video
5. `com.obsproject.Studio` - Obs
6. `com.github.rafostar.Clapper` - Clapper

---

## Package Installation Notes

### Conditional Packages
Some packages are installed conditionally based on user selection:
- **Shell**: Only `zsh` is installed (fish removed)
- **Editor**: `neovim` (with LazyVim), `kate`, `visual-studio-code-bin`
- **Communication**: `discord` (native), `firefox` (browser)

### Package Sources
- **Core Packages**: Installed from Arch Linux repositories and AUR
- **Extra Packages**: Optional packages (user can choose during installation)
- **Flatpak Packages**: Installed via Flatpak (if Flatpak is installed)

### Special Packages
- `starship|zsh` - The `|zsh` suffix indicates it's only installed if zsh is selected
- `bat|zsh`, `eza|zsh`, `duf|zsh` - Only installed with zsh
- `python-requests|wttrbar` - Dependency for wttrbar

---

## Installation Commands

### Core Packages
```bash
# Installed automatically during main installation
./install.sh
```

### Extra Packages
```bash
# User will be prompted during installation
# Or install manually:
yay -S wttrbar ddcui wf-recorder steam gamemode mangohud cava spotify spicetify-cli bat eza duf swayosd-git
```

### Flatpak Packages
```bash
# Installed if Flatpak is available
flatpak install org.gnome.Boxes io.missioncenter.MissionCenter io.gitlab.adhami3310.Impression org.gnome.eog com.obsproject.Studio com.github.rafostar.Clapper
```

---

## Post-Installation

After package installation, the following will be configured:
- LazyVim (Neovim configuration)
- SDDM themes
- Default file associations
- Shell configuration (zsh)
- Wallpaper setup

