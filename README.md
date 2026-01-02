<div align="center">

![404_banner](Source/assets/404_banner.png)

# .Dotfiles-

**My Hyprland dotfiles** — based on [404 Project](https://github.com/404-Project/404)

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)](https://hyprland.org/)

</div>

---

## ✨ Features

- 🎨 **Wallbash** — Dynamic theming based on wallpaper colors
- 🖌️ **Rofi Styles** — 12+ launcher styles
- 🌈 **Themes** — Easy switching with themepatcher
- 🔔 **Dunst** — Notifications
- 🖥️ **Hyprland** — Wayland compositor
- 🔧 **Backup System** — Automatic config backups

---

## 📦 Components

| | |
|---|---|
| **WM** | Hyprland, Hyprlock, Hypridle |
| **Bar** | Waybar |
| **Launcher** | Rofi |
| **Terminal** | Kitty |
| **Shell** | Zsh + Starship |
| **File Manager** | Dolphin |
| **Editor** | VS Code, Vim |

---

## 🚀 Installation

```shell
sudo pacman -S --needed git base-devel
git clone --depth 1 https://github.com/Dijo-404/.Dotfiles- ~/dotfiles
cd ~/dotfiles/Scripts
./install.sh
```

**Reboot** after installation.

---

## 🔄 Updating

```shell
cd ~/dotfiles/Scripts
git pull
./install.sh -r
```

---

## ⌨️ Keybindings

See [KEYBINDINGS.md](KEYBINDINGS.md)

---

## 🙏 Credits

Based on [404 Project](https://github.com/404-Project/404) and [hyprdots](https://github.com/prasanthrangan/hyprdots).
