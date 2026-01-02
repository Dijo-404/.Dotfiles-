
<div align = center>
  <a href="https://discord.gg/AYbJ9MJez7">
    <img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">
  </a>
</div>

###### _<div align="right"><a id=-design-by-t2></a><sub>// design by t2</sub></div>_

![404_banner](../assets/404_banner.png)

<!--
Multi-language README support
-->

[![en](https://img.shields.io/badge/lang-en-red.svg)](../../README.md)
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](README.es.md)
[![de](https://img.shields.io/badge/lang-de-black.svg)](README.de.md)
[![nl](https://img.shields.io/badge/lang-nl-green.svg)](README.nl.md)
[![中文](https://img.shields.io/badge/lang-中文-orange.svg)](README.zh.md)
[![fr](https://img.shields.io/badge/lang-fr-blue.svg)](README.fr.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-006400.svg)](README.pt-br.md)
[![tr](https://img.shields.io/badge/lang-tr-e30a17.svg)](README.tr.md)

<div align="center">
<br>
<a href="#التثبيت"><kbd> <br> التثبيت <br> </kbd></a>&ensp;&ensp;
<a href="#التحديث"><kbd> <br> تحديث <br> </kbd></a>&ensp;&ensp;
<a href="#السمات"><kbd> <br> السمات <br> </kbd></a>&ensp;&ensp;
<a href="#الأنماط"><kbd> <br> الأنماط <br> </kbd></a>&ensp;&ensp;
<a href="KEYBINDINGS.ar.md"><kbd> <br> المفاتيح <br> </kbd></a>&ensp;&ensp;
<a href="https://www.youtube.com/watch?v=2rWqdKU1vu8&list=PLt8rU_ebLsc5yEHUVsAQTqokIBMtx3RFY&index=1"><kbd> <br> يوتيوب <br> </kbd></a>&ensp;&ensp;
<a href="https://404project.pages.dev/"><kbd> <br> ويكي <br> </kbd></a>&ensp;&ensp;
<a href="https://discord.gg/qWehcFJxPa"><kbd> <br> ديسكورد <br> </kbd></a>
</div><br><br>
<div align="center">
  <div style="display: flex; flex-wrap: nowrap; justify-content: center;">
    <img src="../assets/archlinux.png" alt="Arch Linux" style="width: 10%; margin: 10px;"/>
  </div>
</div>

اقرأ هذا لرؤية الملاحظة الكاملة:
[رحلة إلى 404 وما بعدها](../../Hyprdots-to-404.md)

<!--
<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">
<img alt="Dynamic JSON Badge" src="https://img

.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_presence_count&suffix=%20online&style=for-the-badge&logo=discord&logoSize=auto&label=The%20404%20Project&labelColor=ebbcba&color=c79bf0">
-->

<https://github.com/prasanthrangan/hyprdots/assets/106020512/7f8fadc8-e293-4482-a851-e9c6464f5265>

<br>

<a id="التثبيت"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=التثبيت" width="450"/>

---

تم تصميم نص التثبيت للعمل مع نظام [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux) الأساسي، ولكنه **قد** يعمل على بعض [التوزيعات المستندة إلى Arch](https://wiki.archlinux.org/title/Arch-based_distributions). عند تثبيت 404 مع [DE](https://wiki.archlinux.org/title/Desktop_environment)/[WM](https://wiki.archlinux.org/title/Window_manager) آخر، قد يحدث تعارض مع تخصيصاتك الحالية مثل [GTK](https://wiki.archlinux.org/title/GTK)/[Qt](https://wiki.archlinux.org/title/Qt)، [Shell](https://wiki.archlinux.org/title/Command-line_shell)، [SDDM](https://wiki.archlinux.org/title/SDDM)، [GRUB](https://wiki.archlinux.org/title/GRUB)، إلخ. ويكون ذلك على مسؤوليتك الخاصة.
لدعم نظام NixOS، يتم صيانة مشروع منفصل @ [404nix](https://github.com/richen604/404nix/tree/main).

> [!IMPORTANT]
> سيقوم البرنامج النصي للتثبيت باكتشاف بطاقة NVIDIA تلقائيًا وتثبيت برامج تشغيل nvidia-open-dkms الخاصة بنواة النظام.
> تأكد من أن بطاقة NVIDIA الخاصة بك تدعم برامج التشغيل dkms في القائمة المتوفرة [هنا](https://wiki.archlinux.org/title/NVIDIA).

> [!CAUTION]
> سيقوم البرنامج النصي بتغيير إعدادات `grub` أو `systemd-boot` لتمكين NVIDIA DRM.
لتثبيت 404، قم بتنفيذ الأوامر التالية:

```shell
pacman -S --needed git base-devel
git clone --depth 1 https://github.com/404-Project/404 ~/404
cd ~/404/Scripts
./install.sh
```

> [!TIP]
> يمكنك أيضًا إضافة أي تطبيقات أخرى ترغب في تثبيتها مع 404 إلى ملف `Scripts/pkg_extra.lst` وتمرير الملف كمعامل لتثبيته كما يلي:
>
> ```shell
> ./install.sh pkg_extra.lst
> ```

<!--
كمثال ثانٍ لتثبيت، يمكنك استخدام `404-install`، الذي قد يكون أسهل بالنسبة لبعض المستخدمين.
اطلع على تعليمات التثبيت في [404-cli - Usage](https://github.com/kRHYME7/404-cli?tab=readme-ov-file#usage).
-->

قم بإعادة تشغيل الجهاز بعد اكتمال البرنامج النصي للتثبيت وستظهر لك شاشة تسجيل الدخول SDDM (أو شاشة سوداء) لأول مرة.
لمزيد من التفاصيل، راجع [دليل التثبيت](https://github.com/404-Project/404/wiki/installation).

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br>
   </kbd>
  </a>
</div>

<a id="التحديث"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=التحديث" width="450"/>
---

للتحديث، تحتاج إلى استخراج أحدث التغييرات من GitHub واستعادة الإعدادات عن طريق تنفيذ الأوامر التالية:

```shell
cd ~/404/Scripts
git pull origin master
./install.sh -r
```

> [!IMPORTANT]
> لاحظ أنه سيتم الكتابة فوق أي إعدادات قمت بها إذا كانت مدرجة في `Scripts/restore_cfg.psv`.
> ومع ذلك، يتم عمل نسخة احتياطية من جميع الإعدادات التي تم استبدالها ويمكن استعادتها من `~/.config/cfg_backups`.

<!--
كمثال ثانٍ لتحديث، يمكنك استخدام `404 restore ...`، والذي يقدم طريقة أفضل لإدارة عمليات الاستعادة والنسخ الاحتياطي.
لمزيد من التفاصيل، يمكنك الرجوع إلى [404-cli - dots management wiki](https://github.com/kRHYME7/404-cli/wiki/Dots-Management).
-->

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br>
  </kbd>
  </a>
</div>

<a id="السمات"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=السمات" width="450"/>

---

جميع السمات الرسمية لدينا مخزنة في مستودع منفصل، مما يسمح للمستخدمين بتثبيتها باستخدام themepatcher.
لمزيد من المعلومات، قم بزيارة [404 Themes](https://github.com/404-Project/404-themes).
<div align="center">
  <table><tr><td>

[![Catppuccin-Mocha](https://placehold.co/130x30/b4befe/11111b?text=Catppuccin-Mocha&font=Oswald)](https://github.com/404-Project/404-themes/tree/Catppuccin-Mocha)

  </td></tr></table>

</div>

> [!TIP]
> يمكن للجميع، بما في ذلك أنت، إنشاء وصيانة ومشاركة سمات إضافية، وكلها يمكن تثبيتها باستخدام themepatcher!
> لإنشاء سماتك المخصصة، يمكنك الرجوع إلى [دليل السمات](https://github.com/prasanthrangan/hyprdots/wiki/Theming).
> إذا كنت ترغب في عرض سمات 404 الخاصة بك أو تريد العثور على بعض السمات غير الرسمية، قم بزيارة [معرض 404](https://github.com/kRHYME7/404-gallery)!
<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="الأنماط"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=الأنماط" width="450"/>

---

<div align="center"><table><tr>اختيار السمة</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_2.png"/></td></tr></table></div>
<div align="center"><table><tr><td>اختيار خلفية الشاشة</td><td>اختيار المشغل</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/walls_select.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_sel.png"/></td></tr>
<tr><td> وضع Wallbash</td><td>إجراء الإشعارات</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wb_mode_sel.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/notif_action_sel.png"/></td></tr>
</table></div>

<div align="center"><table><tr>مشغل Rofi</tr><tr><td>
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

<div align="center"><table><tr>إغلاق الجلسة</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_2.png"/></td></tr></table></div>
<div align="center"><table><tr>مشغل الألعاب</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_2.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_3.png"/></td></tr></table></div>
<div align="center"><table><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_4.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_5.png"/></td>
</tr>
</table>
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
  <sub>آخر تعديل في: 21/03/2025<span id="last-edited"></span></sub>
</div>

<a id="star_history"></a>
<img src="https://readme-typing-svg.herokuapp.com?font=Lexend+Giga&size=25&pause=1000&color=CCA9DD&vCenter=true&width=435&height=25&lines=النجوم" width="450"/>

---

<a href="https://star-history.com/#404-project/404&404-project/404-gallery&404-project/404-themes&Timeline">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=404-project/404&type=Timeline&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=404-project/404&type=Timeline" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=404-project/404&type=Timeline" />
 </picture>

</a>
