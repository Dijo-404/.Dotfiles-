<div align = center>
  <a href="https://discord.gg/AYbJ9MJez7">
    <img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">
  </a>
</div>

###### _<div align="right"><a id=-design-by-t2></a><sub>// design by t2</sub></div>_

![404_banner](../assets/404_banner.png)

<!--
Mehrsprachige README-Unterstützung
-->

[![en](https://img.shields.io/badge/lang-en-red.svg)](../../README.md)
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](README.es.md)
[![nl](https://img.shields.io/badge/lang-nl-green.svg)](README.nl.md)
[![中文](https://img.shields.io/badge/lang-中文-orange.svg)](README.zh.md)
[![fr](https://img.shields.io/badge/lang-fr-blue.svg)](README.fr.md)
[![ar](https://img.shields.io/badge/lang-AR-orange.svg)](README.ar.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-006400.svg)](README.pt-br.md)
[![tr](https://img.shields.io/badge/lang-tr-e30a17.svg)](README.tr.md)

<div align="center"><br>
  <a href="#installation"><kbd> <br> Installation <br> </kbd></a>&ensp;&ensp;
  <a href="#aktualisieren"><kbd> <br> Aktualisieren <br> </kbd></a>&ensp;&ensp;
  <a href="#themen"><kbd> <br> Themen <br> </kbd></a>&ensp;&ensp;
  <a href="#stile"><kbd> <br> Stile <br> </kbd></a>&ensp;&ensp;
  <a href="KEYBINDINGS.de.md"><kbd> <br> Tastenkombinationen <br> </kbd></a>&ensp;&ensp;
  <a href="https://www.youtube.com/watch?v=2rWqdKU1vu8&list=PLt8rU_ebLsc5yEHUVsAQTqokIBMtx3RFY&index=1"><kbd> <br> Youtube <br> </kbd></a>&ensp;&ensp;
  <a href="https://404project.pages.dev/"><kbd> <br> Wiki <br> </kbd></a>&ensp;&ensp;
  <a href="https://discord.gg/qWehcFJxPa"><kbd> <br> Discord <br> </kbd></a>
</div><br><br>

<div align="center">
  <div style="display: flex; flex-wrap: nowrap; justify-content: center;">
    <img src="../assets/archlinux.png" alt="Arch Linux" style="width: 10%; margin: 10px;"/>
  </div>
</div>

Hier finden Sie die vollständige Notiz:
[Reise zu 404 und darüber hinaus](./Hyprdots-to-404.de.md)

<!--
<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">

<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_presence_count&suffix=%20online&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">
-->

<https://github.com/prasanthrangan/hyprdots/assets/106020512/7f8fadc8-e293-4482-a851-e9c6464f5265>

<br>

<a id="installation"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=INSTALLATION" width="450"/>

---

Das Installationsskript ist für eine minimale [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux)-Installation gedacht, aber **kann** auf einigen [Arch-basierten Distributionen](https://wiki.archlinux.org/title/Arch-based_distributions) funktionieren.
Während die Installation von 404 neben einem anderen [DE](https://wiki.archlinux.org/title/Desktop_environment)/[WM](https://wiki.archlinux.org/title/Window_manager) funktionieren sollte, **wird** es aufgrund der stark angepassten Installation zu Konflikten mit Ihren [GTK](https://wiki.archlinux.org/title/GTK)/[Qt](https://wiki.archlinux.org/title/Qt) Themen, [Shell](https://wiki.archlinux.org/title/Command-line_shell), [SDDM](https://wiki.archlinux.org/title/SDDM), [GRUB](https://wiki.archlinux.org/title/GRUB), usw. kommen und geschieht auf eigene Gefahr.

Für die Unterstützung von NixOS gibt es ein eigenes Projekt, das unter [404nix](https://github.com/richen604/404nix/tree/main) gepflegt wird.

> [!IMPORTANT]
> Das Installationsskript erkennt automatisch eine NVIDIA-Karte und installiert nvidia-open-dkms Treiber für Ihren Kernel.
> Vergewissern Sie sich, dass Ihre NVIDIA-Karte die dkms Treiber aus der [hier](https://wiki.archlinux.org/title/NVIDIA) bereitgestellten Liste unterstützt.

> [!CAUTION]
> Das Skript modifiziert Ihre `grub` oder `systemd-boot` Konfiguration, um NVIDIA DRM zu aktivieren.

Führen Sie zur Installation die folgenden Befehle aus:

```shell
pacman -S --needed git base-devel
git clone --depth 1 https://github.com/404-Project/404 ~/404
cd ~/404/Scripts
./install.sh
```

> [!TIP]
> Sie können auch andere Anwendungen, die Sie zusammen mit 404 installieren möchten, in `Scripts/pkg_user.lst` einfügen und die Datei als Parameter übergeben, um sie wie folgt zu installieren:
>
> ```shell
> ./install.sh pkg_user.lst
> ```

> [!IMPORTANT]
> Beziehen Sie Ihre Liste aus `Scripts/pkg_extra.lst`
>
> oder Sie können `cp Scripts/pkg_extra.lst Scripts/pkg_user.lst` ausführen, wenn Sie alle zusätzlichen Pakete installieren wollen.

<!--
Als zweite Installationsoption können Sie auch `404-install` verwenden, was für einige einfacher sein könnte.
Sehen Sie sich die Installationsanweisungen für 404 in [404-cli - Usage](https://github.com/kRHYME7/404-cli?tab=readme-ov-file#usage) an.
-->

Bitte starten Sie neu, nachdem das Installationsskript abgeschlossen ist und Sie zum ersten Mal den SDDM-Anmeldebildschirm (oder einen schwarzen Bildschirm) sehen.
Weitere Einzelheiten entnehmen Sie bitte dem [Installations-Wiki](https://github.com/404-Project/404/wiki/installation).

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="aktualisieren"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=AKTUALISIEREN" width="450"/>

---

Um 404 zu aktualisieren, müssen Sie die letzten Änderungen von GitHub ziehen und die Konfigurationen wiederherstellen, indem Sie die folgenden Befehle ausführen:

```shell
cd ~/404/Scripts
git pull origin master
./install.sh -r
```

> [!IMPORTANT]
> Bitte beachten Sie, dass alle Konfigurationen, die Sie vorgenommen haben, überschrieben werden, wenn sie in der Liste von `Scripts/restore_cfg.psv` aufgeführt sind.
> Alle ersetzten Konfigurationen werden jedoch gesichert und können in `~/.config/cfg_backups` wiederhergestellt werden.

<!--
Als zweite Aktualisierungsoption können Sie `404 restore ...` verwenden, das eine bessere Möglichkeit zur Verwaltung von Wiederherstellungs- und Sicherungsoptionen bietet.
Weitere Details finden Sie in [404-cli - dots management wiki](https://github.com/kRHYME7/404-cli/wiki/Dots-Management).
-->

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="themen"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=THEMEN" width="450"/>

---

Alle unsere offiziellen Themen sind in einem separaten Repository gespeichert, so dass Benutzer sie mit themepatcher installieren können.
Weitere Informationen finden Sie unter [404-Project/404-themes](https://github.com/404-Project/404-themes).

<div align="center">
  <table><tr><td>

  [![Catppuccin-Mocha](https://placehold.co/130x30/b4befe/11111b?text=Catppuccin-Mocha&font=Oswald)](https://github.com/404-Project/404-themes/tree/Catppuccin-Mocha)

  </td></tr></table>
</div>

> [!TIP]
> Jeder, auch Sie, kann zusätzliche Themen erstellen, pflegen und weitergeben, die alle mit themepatcher installiert werden können!
> Um Ihr eigenes Theme zu erstellen, schauen Sie bitte in das [theming wiki](https://github.com/prasanthrangan/hyprdots/wiki/Theming).
> Wenn du dein eigenes 404-Theme vorstellen möchtest, oder wenn du nicht-offizielle Themen finden möchtest, besuche [kRHYME7/404-gallery](https://github.com/kRHYME7/404-gallery)!

<div align="right"><br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="stile"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=STILE" width="450"/>

---

<div align="center">
  <table><tr>Thema auswählen</tr><tr><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_1.png"/>
  </td><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_2.png"/>
  </td></tr></table>
</div>

<div align="center">
  <table><tr><td>Hintergrundbild auswählen</td><td>Startprogramm auswählen</td></tr><tr><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/walls_select.png"/></td><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_sel.png"/></td></tr>
  <tr><td>Wallbash Modi</td><td>Benachrichtigung Aktion</td></tr><tr><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wb_mode_sel.png"/></td><td>
  <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/notif_action_sel.png"/>
  </td></tr></table>
</div>

<div align="center"><table><tr>Rofi Startprogramm</tr><tr><td>
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

<div align="center">
  <table><tr>Wlogout Menü</tr><tr><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_1.png"/></td><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_2.png"/>
  </td></tr></table>
</div>

<div align="center">
  <table><tr>Spiel Startprogramm</tr><tr><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_1.png"/></td><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_2.png"/></td><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_3.png"/>
  </td></tr></table>
</div>
<div align="center">
  <table><tr><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_4.png"/></td><td>
    <img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_5.png"/>
  </td></tr></table>
</div>

<!--
<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<div align="center">

</div>
-->

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<div align="right">
  <sub>Zuletzt bearbeitet am: 23/03/2025<span id="last-edited"></span></sub>
</div>

<a id="star_history"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=STERNE" width="450"/>

---

<a href="https://star-history.com/#404-project/404&404-project/404-gallery&404-project/404-themes&Timeline">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=404-project/404&type=Timeline&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=404-project/404&type=Timeline" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=404-project/404&type=Timeline" />
 </picture>
</a>
