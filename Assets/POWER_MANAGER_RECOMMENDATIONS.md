# Power Manager Recommendations

## Overview
Recommendations for power-efficient daemons that can boost performance when needed without negatively impacting battery life.

## Top Recommendations

### 1. **TLP with tlp-pd** (RECOMMENDED)

**Why it's the best choice:**
- ✅ **Highly configurable** - Extensive tuning options for CPU, GPU, disk, network
- ✅ **Power efficient** - Excellent battery life optimization
- ✅ **Performance boost** - Can aggressively boost CPU when needed
- ✅ **tlp-pd** - Implements power-profiles-daemon API, can replace it
- ✅ **Battle-tested** - Used by thousands of Linux users
- ✅ **Works with Hyprland** - No conflicts with Wayland

**Installation:**
```bash
yay -S tlp tlp-rdw
sudo systemctl enable tlp
sudo systemctl start tlp
```

**Configuration:**
- Default config: `/etc/tlp.conf` (already optimized)
- AC mode: Performance-oriented
- Battery mode: Power-saving oriented
- Can use `tlp-pd` to provide power-profiles-daemon compatibility

**Pros:**
- Most comprehensive power management
- Excellent battery life
- Can boost performance when needed
- Automatic switching based on AC/battery
- Highly customizable

**Cons:**
- More complex configuration
- Requires systemd service (system-level)

---

### 2. **power-profiles-daemon** (CURRENT SETUP)

**Why it's good:**
- ✅ **Simple** - Easy to use, minimal configuration
- ✅ **Modern** - Standard in GNOME/KDE
- ✅ **Already configured** - Already set up in your dotfiles
- ✅ **User-space** - Runs as user service
- ✅ **D-Bus API** - Integrates well with desktop environments

**Current Status:**
- Already in `pkg_extra.lst`
- Script created: `powerprofile.sh`
- Keybinding: `Super + R`
- Waybar module configured

**Pros:**
- Simple and lightweight
- Already integrated
- Good for basic needs
- Works well with modern DEs

**Cons:**
- Less configurable than TLP
- Basic power management only
- May not be as aggressive in power-saving

---

### 3. **auto-cpufreq** (AUTOMATIC MANAGEMENT)

**Why it's good:**
- ✅ **Automatic** - No manual switching needed
- ✅ **Smart** - Adjusts based on CPU load
- ✅ **Lightweight** - Minimal resource usage
- ✅ **Simple** - Works out of the box

**Installation:**
```bash
yay -S auto-cpufreq
sudo systemctl enable auto-cpufreq
sudo systemctl start auto-cpufreq
```

**How it works:**
- Monitors CPU load automatically
- Switches between performance/powersave governors
- Adjusts CPU frequency based on demand
- No manual intervention needed

**Pros:**
- Fully automatic
- Smart load-based switching
- Minimal configuration
- Good for laptops

**Cons:**
- Less control than TLP
- CPU-focused only (doesn't manage other components)
- May not be as aggressive as manual management

---

## Comparison Table

| Feature | TLP | power-profiles-daemon | auto-cpufreq |
|---------|-----|----------------------|--------------|
| **Power Efficiency** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| **Performance Boost** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐ |
| **Configurability** | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **Ease of Use** | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **Battery Life** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| **AC/Battery Auto-switch** | ✅ | ❌ | ✅ |
| **CPU Management** | ✅ | ✅ | ✅ |
| **GPU Management** | ✅ | ❌ | ❌ |
| **Disk Management** | ✅ | ❌ | ❌ |
| **Network Management** | ✅ | ❌ | ❌ |

---

## My Recommendation

### For Maximum Control & Efficiency: **TLP**

If you want the best balance of power efficiency and performance boost:

1. **Install TLP:**
   ```bash
   yay -S tlp tlp-rdw
   ```

2. **Enable service:**
   ```bash
   sudo systemctl enable tlp
   sudo systemctl start tlp
   ```

3. **Optional: Use tlp-pd** (replaces power-profiles-daemon):
   ```bash
   yay -S tlp-pd
   systemctl --user enable tlp-pd
   systemctl --user start tlp-pd
   ```

4. **Configure** (optional, defaults are good):
   ```bash
   sudo nano /etc/tlp.conf
   ```

**TLP Default Behavior:**
- **On AC**: Performance mode (aggressive CPU boosting)
- **On Battery**: Power-saver mode (optimized for battery)
- **Automatic switching** when plugging/unplugging

### For Simplicity: **Keep power-profiles-daemon**

If you prefer simplicity and the current setup works:
- Already configured
- Easy to use with `Super + R`
- Good for basic needs
- Less configuration required

### For Automatic Management: **auto-cpufreq**

If you want hands-off power management:
- Install and forget
- Automatically adjusts based on load
- Good for laptops
- Can work alongside other tools

---

## Hybrid Approach (Best of Both Worlds)

You can use **TLP** for comprehensive power management and **power-profiles-daemon** for manual profile switching:

1. **TLP** handles automatic AC/battery switching
2. **power-profiles-daemon** for manual override when needed
3. Use `Super + R` to manually switch profiles even on AC

**Note:** Make sure TLP and power-profiles-daemon don't conflict. TLP's `TLP_ENABLE=1` should work fine with power-profiles-daemon.

---

## Installation Script

Would you like me to:
1. Add TLP to the package list?
2. Create a script to switch between power managers?
3. Update the power profile script to work with TLP?

---

## Additional Tools

### PowerTOP (Diagnostic Tool)
```bash
yay -S powertop
sudo powertop --calibrate
```
- Identifies power-hungry processes
- Provides optimization suggestions
- Useful for troubleshooting

### cpupower (Low-level Control)
```bash
yay -S cpupower
```
- Direct CPU frequency control
- More manual, but very precise
- Good for advanced users

---

## Conclusion

**For your use case (power efficient + performance boost):**

1. **Best Choice: TLP** - Most comprehensive, best battery life, can boost performance
2. **Current Setup: power-profiles-daemon** - Good if you want simplicity
3. **Automatic: auto-cpufreq** - Good if you want hands-off management

**My recommendation: Use TLP** for the best balance of power efficiency and performance control.

