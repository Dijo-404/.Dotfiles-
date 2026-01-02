<div align="center">

![404_banner](Source/assets/404_banner.png)

# .Dotfiles-

**My personal Hyprland dotfiles** — based on the [404 Project](https://github.com/404-Project/404)

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)](https://hyprland.org/)

</div>

---

## ✨ Features

- 🎨 **Wallbash** — Dynamic theming based on wallpaper colors
- 🖌️ **Rofi Styles** — 12+ launcher styles
- 🌈 **Theme Engine** — Easy switching with themepatcher
- 🔔 **Dunst Notifications** — Interactive notification system
- 🖥️ **Hyprland** — Optimized Wayland compositor setup
- 🎯 **NVIDIA Ready** — Auto-detection and driver installation
- 🔧 **Backup System** — Automatic config backups

---

## 📦 What's Included

| Category | Components |
|----------|------------|
| **WM** | Hyprland, Hyprlock, Hypridle |
| **Bar** | Waybar |
| **Launcher** | Rofi |
| **Terminal** | Kitty |
| **Notifications** | Dunst |
| **File Manager** | Dolphin |
| **Browser** | Firefox |
| **Editor** | VS Code, Vim |
| **Shell** | Zsh + Starship |

---

## 🚀 Installation

> [!IMPORTANT]
> Designed for minimal [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux). May work on Arch-based distros.

> [!CAUTION]
> This will modify GTK/Qt theming, SDDM, GRUB, and shell configs. Backup your existing configs first!

```shell
sudo pacman -S --needed git base-devel
git clone --depth 1 https://github.com/Dijo-404/.Dotfiles- ~/dotfiles
cd ~/dotfiles/Scripts
./install.sh
```

**Reboot** after installation completes.

### Custom Packages

Add extra packages to `Scripts/pkg_user.lst`:

```shell
./install.sh pkg_user.lst
```

---

## 🔄 Updating

```shell
cd ~/dotfiles/Scripts
git pull origin master
./install.sh -r
```

> [!NOTE]
> Configs listed in `Scripts/restore_cfg.psv` will be overwritten.
> Backups are saved to `~/.config/cfg_backups`.

---

## 🎨 Themes

Install themes via themepatcher from [404-themes](https://github.com/404-Project/404-themes).

---

## ⌨️ Keybindings

See [KEYBINDINGS.md](KEYBINDINGS.md) for the full list.

---

## 📸 Styles

<details>
<summary>Click to expand screenshots</summary>

<div align="center">

**Theme Select**
| | |
|---|---|
| ![theme1](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_1.png) | ![theme2](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_2.png) |

**Wallpaper & Launcher**
| Wallpaper Select | Launcher Select |
|---|---|
| ![walls](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/walls_select.png) | ![rofi](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_sel.png) |

**Rofi Launcher Styles**
| | | |
|---|---|---|
| ![r1](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_1.png) | ![r2](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_2.png) | ![r3](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_3.png) |
| ![r4](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_4.png) | ![r5](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_5.png) | ![r6](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_6.png) |

</div>

</details>

---

## 🙏 Credits

Based on [404 Project](https://github.com/404-Project/404) by [@kRHYME7](https://github.com/kRHYME7), originally from [hyprdots](https://github.com/prasanthrangan/hyprdots) by [@prasanthrangan](https://github.com/prasanthrangan).

See [CREDITS.md](CREDITS.md) for full attribution.

---

## 📚 Resources

- [404 Project Wiki](https://404project.pages.dev/)
- [Hyprland Wiki](https://wiki.hyprland.org/)
- [404 Discord](https://discord.gg/AYbJ9MJez7)
