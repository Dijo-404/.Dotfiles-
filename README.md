
<div align="center">
  
<a href="https://discord.gg/AYbJ9MJez7">
  <img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">
</a>

</div>

###### _<div align="right"><a id=-design-by-t2></a><sub>// design by t2</sub></div>_

![404_banner](Source/assets/404_banner.png)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](Source/docs/README.es.md)
[![de](https://img.shields.io/badge/lang-de-black.svg)](Source/docs/README.de.md)
[![nl](https://img.shields.io/badge/lang-nl-green.svg)](Source/docs/README.nl.md)
[![中文](https://img.shields.io/badge/lang-中文-orange.svg)](Source/docs/README.zh.md)
[![fr](https://img.shields.io/badge/lang-fr-blue.svg)](Source/docs/README.fr.md)
[![ar](https://img.shields.io/badge/lang-AR-orange.svg)](Source/docs/README.ar.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-006400.svg)](Source/docs/README.pt-br.md)
[![tr](https://img.shields.io/badge/lang-tr-e30a17.svg)](Source/docs/README.tr.md)

<div align="center">

<br>

<a href="#installation"><kbd> <br> Installation <br> </kbd></a>&ensp;&ensp;
<a href="#features"><kbd> <br> Features <br> </kbd></a>&ensp;&ensp;
<a href="#updating"><kbd> <br> Updating <br> </kbd></a>&ensp;&ensp;
<a href="#themes"><kbd> <br> Themes <br> </kbd></a>&ensp;&ensp;
<a href="#styles"><kbd> <br> Styles <br> </kbd></a>&ensp;&ensp;
<a href="KEYBINDINGS.md"><kbd> <br> Keybindings <br> </kbd></a>&ensp;&ensp;
<a href="https://404project.pages.dev/"><kbd> <br> Wiki <br> </kbd></a>&ensp;&ensp;
<a href="https://discord.gg/qWehcFJxPa"><kbd> <br> Discord <br> </kbd></a>

</div>

<br>

<div align="center">
  <img src="Source/assets/archlinux.png" alt="Arch Linux" width="80"/>
</div>

<br>

> 📖 **New here?** Check out the full story: [Journey to 404 and beyond](./Hyprdots-to-404.md)

<br>

https://github.com/prasanthrangan/hyprdots/assets/106020512/7f8fadc8-e293-4482-a851-e9c6464f5265

<br>

---

<a id="features"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=FEATURES" width="450"/>

---

- 🎨 **Wallbash** — Dynamic theming that extracts colors from your wallpaper
- 🖌️ **Multiple Rofi Styles** — 12+ launcher styles to choose from
- 🌈 **Theme Engine** — Easy theme switching with themepatcher
- 🔔 **Custom Notifications** — Interactive notification system with actions
- 🖥️ **Hyprland Integration** — Optimized for the Hyprland compositor
- 🎯 **NVIDIA Ready** — Auto-detection and driver installation
- ⚡ **Modular Installation** — Install only what you need
- 🔧 **Backup System** — Automatic config backups before changes

<div align="right">
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

---

<a id="installation"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=INSTALLATION" width="450"/>

---

The installation script is designed for a minimal [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux) install, but **may** work on some [Arch-based distros](https://wiki.archlinux.org/title/Arch-based_distributions).

While installing 404 alongside another [DE](https://wiki.archlinux.org/title/Desktop_environment)/[WM](https://wiki.archlinux.org/title/Window_manager) should work, due to it being a heavily customized setup, it **will** conflict with your [GTK](https://wiki.archlinux.org/title/GTK)/[Qt](https://wiki.archlinux.org/title/Qt) theming, [Shell](https://wiki.archlinux.org/title/Command-line_shell), [SDDM](https://wiki.archlinux.org/title/SDDM), [GRUB](https://wiki.archlinux.org/title/GRUB), etc. and is at your own risk.

🐧 **NixOS?** There's a separate project maintained @ [404nix](https://github.com/richen604/404nix/tree/main)

> [!IMPORTANT]
> The install script will auto-detect an NVIDIA card and install nvidia-open-dkms drivers for your kernel.
> For legacy cards [check this first](./Scripts/nvidia-db/).
> Please ensure that your NVIDIA card supports dkms drivers in the list provided [here](https://wiki.archlinux.org/title/NVIDIA).

> [!CAUTION]
> The script modifies your `grub` or `systemd-boot` config to enable NVIDIA DRM.

### Quick Start

```shell
sudo pacman -S --needed git base-devel
git clone --depth 1 https://github.com/404-Project/404 ~/404
cd ~/404/Scripts
./install.sh
```

> [!TIP]
> You can also add any other apps you wish to install alongside 404 to `Scripts/pkg_user.lst` and pass the file as a parameter:
>
> ```shell
> ./install.sh pkg_user.lst
> ```

> [!IMPORTANT]
> Refer to `Scripts/pkg_extra.lst` for available extra packages.
> You can `cp Scripts/pkg_extra.lst Scripts/pkg_user.lst` if you wish to install all extra packages.

Please **reboot** after the install script completes and takes you to the SDDM login screen (or black screen) for the first time.

📚 For more details, refer to the [installation wiki](https://github.com/404-Project/404/wiki/installation).

<div align="right">
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

---

<a id="updating"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=UPDATING" width="450"/>

---

To update 404, pull the latest changes from GitHub and restore configs:

```shell
cd ~/404/Scripts
git pull origin master
./install.sh -r
```

> [!IMPORTANT]
> Any configurations you made will be overwritten if listed in `Scripts/restore_cfg.psv`.
> However, all replaced configs are backed up and may be recovered from `~/.config/cfg_backups`.

<div align="right">
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

---

<a id="themes"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=THEMES" width="450"/>

---

All official themes are stored in a separate repository, allowing users to install them using themepatcher.
For more information, visit [404-Project/404-themes](https://github.com/404-Project/404-themes).

<div align="center">
  <table><tr><td>

[![Catppuccin-Mocha](https://placehold.co/130x30/b4befe/11111b?text=Catppuccin-Mocha&font=Oswald)](https://github.com/404-Project/404-themes/tree/Catppuccin-Mocha)

  </td></tr></table>
</div>

> [!TIP]
> Everyone, including you, can create, maintain, and share additional themes — all installable via themepatcher!
> 
> - 🎨 **Create your own:** Refer to the [theming wiki](https://github.com/prasanthrangan/hyprdots/wiki/Theming)
> - 🖼️ **Showcase or discover themes:** Visit [kRHYME7/404-gallery](https://github.com/kRHYME7/404-gallery)

<div align="right">
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

---

<a id="styles"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=STYLES" width="450"/>

---

<div align="center"><table><tr>Theme Select</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_2.png"/></td></tr></table></div>

<div align="center"><table><tr><td>Wallpaper Select</td><td>Launcher Select</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/walls_select.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_sel.png"/></td></tr>
<tr><td>Wallbash Modes</td><td>Notification Action</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wb_mode_sel.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/notif_action_sel.png"/></td></tr>
</table></div>

<div align="center"><table><tr>Rofi Launcher</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_2.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_3.png"/></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_4.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_5.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_6.png"/></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_7.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_8.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_9.png"/></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_10.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_11.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_12.png"/></td></tr>
</table></div>

<div align="center"><table><tr>Wlogout Menu</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_2.png"/></td></tr></table></div>

<div align="right">
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

---

<a id="contributing"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=CONTRIBUTING" width="450"/>

---

We welcome contributions from the community! To get started:

| Resource | Description |
|----------|-------------|
| [CONTRIBUTING.md](CONTRIBUTING.md) | Contribution guidelines |
| [TEAM_ROLES.md](TEAM_ROLES.md) | Team structure and roles |
| [RELEASE_POLICY.md](RELEASE_POLICY.md) | Release process |
| [CONTRIBUTORS.md](CONTRIBUTORS.md) | Add yourself with your first PR |

Whether you're helping with code, testing, or documentation — we appreciate your support in making 404 better for everyone. Thank you! 💜

<div align="right">
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

---

<a id="star_history"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=STARS" width="450"/>

---

[![Stargazers over time](https://starchart.cc/404-Project/404.svg?background=%231f2226&axis=%23ebbcba&line=%23c79bf0)](https://starchart.cc/404-Project/404)

<div align="right">
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

---

<a id="credits"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=THANK YOU!" width="450"/>

---

- [See the full Credits page here](./CREDITS.md)

<div align="right">
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

---

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://rubiin.is-a.dev"><img src="https://avatars.githubusercontent.com/u/8222059?v=4?s=100" width="100px;" alt="Rubin Bhandari"/><br /><sub><b>Rubin Bhandari</b></sub></a><br /><a href="https://github.com/404-Project/404/commits?author=rubiin" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/kRHYME7"><img src="https://avatars.githubusercontent.com/u/53417443?v=4?s=100" width="100px;" alt="Khing"/><br /><sub><b>Khing</b></sub></a><br /><a href="https://github.com/404-Project/404/commits?author=kRHYME7" title="Code">💻</a> <a href="https://github.com/404-Project/404/commits?author=kRHYME7" title="Documentation">📖</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

---

<div align="center">
  <sub>Made with 💜 by the 404 Project community</sub>
</div>
