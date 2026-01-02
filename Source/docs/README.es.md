<div align = center>
  <a href="https://discord.gg/AYbJ9MJez7">
    <img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">
  </a>
</div>

###### _<div align="right"><a id=-design-by-t2></a><sub>// diseño por t2</sub></div>_

![404_banner](../assets/404_banner.png)

<!--
Soporte multilingüe para el README
-->

[![en](https://img.shields.io/badge/lang-en-red.svg)](../../README.md)
[![de](https://img.shields.io/badge/lang-de-black.svg)](README.de.md)
[![nl](https://img.shields.io/badge/lang-nl-green.svg)](README.nl.md)
[![中文](https://img.shields.io/badge/lang-中文-orange.svg)](README.zh.md)
[![fr](https://img.shields.io/badge/lang-fr-blue.svg)](README.fr.md)
[![ar](https://img.shields.io/badge/lang-AR-orange.svg)](README.ar.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-006400.svg)](README.pt-br.md)
[![tr](https://img.shields.io/badge/lang-tr-e30a17.svg)](README.tr.md)

<div align="center">

<br>

<a href="#instalación"><kbd> <br> Instalación <br> </kbd></a>&ensp;&ensp;
<a href="#actualizar"><kbd> <br> actualizar <br> </kbd></a>&ensp;&ensp;
<a href="#temas"><kbd> <br> Temas <br> </kbd></a>&ensp;&ensp;
<a href="#estilos"><kbd> <br> Estilos <br> </kbd></a>&ensp;&ensp;
<a href="KEYBINDINGS.es.md"><kbd> <br> Combinaciones <br> </kbd></a>&ensp;&ensp;
<a href="https://www.youtube.com/watch?v=2rWqdKU1vu8&list=PLt8rU_ebLsc5yEHUVsAQTqokIBMtx3RFY&index=1"><kbd> <br> Youtube <br> </kbd></a>&ensp;&ensp;
<a href="https://404project.pages.dev/"><kbd> <br> Wiki <br> </kbd></a>&ensp;&ensp;
<a href="https://discord.gg/qWehcFJxPa"><kbd> <br> Discord <br> </kbd></a>

</div><br><br>

<div align="center">
  <div style="display: flex; flex-wrap: nowrap; justify-content: center;">
    <img src="../assets/archlinux.png" alt="Arch Linux" style="width: 10%; margin: 10px;"/>
  </div>
</div>

Mira esto para ver la nota completa:
[Viaje a 404 y más allá](./Hyprdots-to-404.es.md)

<!--
<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">

<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_presence_count&suffix=%20online&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">
-->

<https://github.com/prasanthrangan/hyprdots/assets/106020512/7f8fadc8-e293-4482-a851-e9c6464f5265>

<br>

<a id="instalación"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=INSTALACI%C3%93N" width="450"/>

---

El script de instalación está diseñado para un mínimo [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux) instalar, pero **puede** funcionar en algunas [Distros basadas en arch](https://wiki.archlinux.org/title/Arch-based_distributions). Al instalar 404 junto con otro [DE](https://wiki.archlinux.org/title/Desktop_environment)/[WM](https://wiki.archlinux.org/title/Window_manager) debería funcionar, debido a que es una configuración muy personalizada, **tendrá** conflicto con su [GTK](https://wiki.archlinux.org/title/GTK)/[Qt](https://wiki.archlinux.org/title/Qt) tematización, [Shell](https://wiki.archlinux.org/title/Command-line_shell), [SDDM](https://wiki.archlinux.org/title/SDDM), [GRUB](https://wiki.archlinux.org/title/GRUB), etc. y es bajo su propio riesgo.

Para apoyar a NixOS se mantiene un proyecto separado @ [404nix](https://github.com/richen604/404nix/tree/main)

> [!IMPORTANT]
> El script de instalación detectará automáticamente una tarjeta NVIDIA e instalará los controladores nvidia-open-dkms para su kernel.
> Asegúrese de que su tarjeta NVIDIA admita los controladores dkms en la lista proporcionada [aquí](https://wiki.archlinux.org/title/NVIDIA).

> [!CAUTION]
> El script modifica su configuración `grub` o `systemd-boot` para habilitar NVIDIA DRM.

Para instalar, ejecute los siguientes comandos:

```shell
pacman -S --needed git base-devel
git clone --depth 1 https://github.com/404-Project/404 ~/404
cd ~/404/Scripts
./install.sh
```

> [!TIP]
> También puedes agregar cualquier otra aplicación que desees instalar junto con 404 a `Scripts/pkg_extra.lst` y pasar el archivo como parámetro para instalarlo de la siguiente manera:
>
> ```shell
> ./install.sh pkg_extra.lst
> ```

<!--
As a second install option, you can also use `404-install`, which might be easier for some.
View installation instructions for 404 in [404-cli - Usage](https://github.com/kRHYME7/404-cli?tab=readme-ov-file#usage).
-->

Reinicie después de que el script de instalación se complete y lo lleve a la pantalla de inicio de sesión de SDDM (o pantalla negra) por primera vez.
Para obtener más detalles, consulte la [wiki de instalación](https://github.com/404-Project/404/wiki/installation).

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="actualizar"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=ACTUALIZAR" width="450"/>

---

Para actualizar 404, necesitarás extraer los últimos cambios de GitHub y restaurar las configuraciones ejecutando los siguientes comandos:

```shell
cd ~/404/Scripts
git pull origin master
./install.sh -r
```

> [!IMPORTANT]
> Tenga en cuenta que cualquier configuración que haya realizado se sobrescribirá si se indica que debe realizarse tal como se indica en `Scripts/restore_cfg.psv`.
> Sin embargo, se realiza una copia de seguridad de todas las configuraciones reemplazadas y se pueden recuperar desde allí `~/.config/cfg_backups`.

<!--
As a second update option, you can use `404 restore ...`, which does have a better way of managing restore and backup options.
For more details, you can refer to [404-cli - dots management wiki](https://github.com/kRHYME7/404-cli/wiki/Dots-Management).
-->

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="temas"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=TEMAS" width="450"/>

---

Todos nuestros temas oficiales se almacenan en un repositorio separado, lo que permite a los usuarios instalarlos mediante themepatcher.
Para obtener más información, visite [Temas 404](https://github.com/404-Project/404-themes).

<div align="center">
  <table><tr><td>

[![Catppuccin-Mocha](https://placehold.co/130x30/b4befe/11111b?text=Catppuccin-Mocha&font=Oswald)](https://github.com/404-Project/404-themes/tree/Catppuccin-Mocha)

  </td></tr></table>
</div>

> [!TIP]
> Todos, incluido usted, pueden crear, mantener y compartir temas adicionales, ¡todos los cuales pueden instalarse usando themepatcher!
> Para crear su propio tema personalizado, consulte la [Wiki de temas](https://github.com/prasanthrangan/hyprdots/wiki/Theming).
> Si desea que se muestre su tema de 404 o desea encontrar algunos temas no oficiales, visite [Galeria 404](https://github.com/kRHYME7/404-gallery)!

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="estilos"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=ESTILOS" width="450"/>

---

<div align="center"><table><tr>Seleccionar tema</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_2.png"/></td></tr></table></div>

<div align="center"><table><tr><td>Seleccionar fondo de pantalla</td><td>Seleccionar lanzador</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/walls_select.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_sel.png"/></td></tr>
<tr><td> Modos de Wallbash</td><td>Acción de notificación</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wb_mode_sel.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/notif_action_sel.png"/></td></tr>
</table></div>

<div align="center"><table><tr>Lanzador Rofi</tr><tr><td>
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

<div align="center"><table><tr>Cerrar sesión</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_2.png"/></td></tr></table></div>

<div align="center"><table><tr>Lanzador de juegos</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_2.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_3.png"/></td></tr></table></div>
<div align="center"><table><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_4.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_5.png"/></td></tr></table></div>

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
  <sub>Última edición el: 21/03/2025<span id="last-edited"></span></sub>
</div>

<a id="star_history"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=ESTRELLAS" width="450"/>

---

<a href="https://star-history.com/#404-project/404&404-project/404-gallery&404-project/404-themes&Timeline">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=404-project/404&type=Timeline&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=404-project/404&type=Timeline" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=404-project/404&type=Timeline" />
 </picture>
</a>
