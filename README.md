<div align="center">

# .Dotfiles-

**Hyprland dotfiles** — based on [404 Project](https://github.com/404-Project/404)

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=flat-square&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=flat-square&logo=wayland&logoColor=black)](https://hyprland.org/)

</div>

---

## Features

- **Wallbash** — Dynamic theming based on wallpaper colors
- **Rofi** — Multiple launcher styles
- **Themepatcher** — Easy theme switching
- **Dunst** — Notification daemon
- **Hyprland** — Wayland compositor with animations

---

## Components

| Category | Tools |
|----------|-------|
| Window Manager | Hyprland, Hyprlock, Hypridle |
| Status Bar | Waybar |
| Launcher | Rofi |
| Terminal | Kitty |
| Shell | Zsh + Starship |
| File Manager | Dolphin |
| Editor | Neovim (LazyVim), Kate, VS Code |

---

## Installation

```shell
sudo pacman -S --needed git base-devel
git clone --depth 1 https://github.com/Dijo-404/.Dotfiles- ~/dotfiles
cd ~/dotfiles/Scripts
./install.sh
```

Reboot after installation completes.

---

## Updating

```shell
cd ~/dotfiles/Scripts
git pull
./install.sh -r
```

---

## Keybindings

See [KEYBINDINGS.md](Assets/KEYBINDINGS.md)

---

## Credits

Based on [404 Project](https://github.com/404-Project/404) and [hyprdots](https://github.com/prasanthrangan/hyprdots).
