#!/usr/bin/env bash
scrDir=$(dirname "$(realpath "$0")")
source "$scrDir/globalcontrol.sh"
isNotify=${POWER_PROFILE_NOTIFY:-true}

# Check if TLP is available
has_tlp=false
if command -v tlp > /dev/null 2>&1 && systemctl is-active --quiet tlp 2>/dev/null; then
    has_tlp=true
fi

# Check if power-profiles-daemon is available
has_ppd=false
if command -v powerprofilesctl > /dev/null 2>&1; then
    has_ppd=true
fi

# State file to track if we're in auto mode
state_file="${XDG_RUNTIME_DIR:-/tmp}/hyde-power-profile-state"
auto_mode_file="${state_file}.auto"

# Check if we're in auto mode
is_auto_mode() {
    [ -f "$auto_mode_file" ]
}

# Get current profile
get_current_profile() {
    if is_auto_mode; then
        echo "auto"
    elif [ "$has_ppd" = true ]; then
        powerprofilesctl get 2>/dev/null || echo "unknown"
    else
        echo "unknown"
    fi
}

# Get available profiles (including auto if TLP is available)
get_available_profiles() {
    local profiles=""
    if [ "$has_tlp" = true ]; then
        profiles="auto "
    fi
    if [ "$has_ppd" = true ]; then
        local ppd_profiles=$(powerprofilesctl list 2>/dev/null | grep -E "^\*|^ " | sed 's/^\*\?[[:space:]]*//' | tr '\n' ' ')
        profiles="${profiles}${ppd_profiles}"
    fi
    echo "$profiles" | xargs
}

# Enable auto mode (TLP takes control)
enable_auto_mode() {
    if [ "$has_tlp" != true ]; then
        [[ $isNotify == true ]] && notify-send -a "HyDE Notify" -r 9 -t 3000 -u critical "Power Profile" "TLP is not installed or not running"
        return 1
    fi
    
    # Create state file to mark auto mode
    touch "$auto_mode_file"
    
    # Set power-profiles-daemon to balanced (TLP will override)
    if [ "$has_ppd" = true ]; then
        powerprofilesctl set balanced >/dev/null 2>&1
    fi
    
    # Get TLP status
    local tlp_status=""
    if command -v tlp-stat > /dev/null 2>&1; then
        tlp_status=$(tlp-stat -s 2>/dev/null | grep -i "mode" | head -1 || echo "")
    fi
    
    if [[ $isNotify == true ]]; then
        notify-send -a "HyDE Notify" -r 9 -t 2000 -i "🔄" "Power Profile" "Auto mode: TLP managing power\n$tlp_status"
    fi
}

# Disable auto mode (power-profiles-daemon takes control)
disable_auto_mode() {
    rm -f "$auto_mode_file"
}

# Cycle to next profile
cycle_profile() {
    local current=$(get_current_profile)
    local profiles=($(get_available_profiles))
    local current_index=-1
    local next_index=0
    
    # Find current profile index
    for i in "${!profiles[@]}"; do
        if [[ "${profiles[$i]}" == "$current" ]]; then
            current_index=$i
            break
        fi
    done
    
    # If in auto mode but not in profiles list, add it
    if is_auto_mode && [[ ! " ${profiles[@]} " =~ " auto " ]]; then
        profiles=("auto" "${profiles[@]}")
        current_index=0
    fi
    
    # Calculate next index
    if [[ $current_index -ge 0 ]]; then
        next_index=$(( (current_index + 1) % ${#profiles[@]} ))
    fi
    
    # Set next profile
    local next_profile="${profiles[$next_index]}"
    
    if [[ "$next_profile" == "auto" ]]; then
        enable_auto_mode
    else
        disable_auto_mode
        if [ "$has_ppd" = true ]; then
            powerprofilesctl set "$next_profile" 2>/dev/null
        fi
        
        # Send notification
        if [[ $isNotify == true ]]; then
            local icon=""
            case "$next_profile" in
                performance)
                    icon="⚡"
                    ;;
                balanced)
                    icon="⚖"
                    ;;
                power-saver)
                    icon="🔋"
                    ;;
                *)
                    icon="⚙"
                    ;;
            esac
            notify-send -a "HyDE Notify" -r 9 -t 2000 -i "$icon" "Power Profile" "Switched to: $next_profile"
        fi
    fi
}

# Set specific profile
set_profile() {
    local profile=$1
    
    if [[ "$profile" == "auto" ]]; then
        enable_auto_mode
        return
    fi
    
    disable_auto_mode
    
    if [ "$has_ppd" = true ]; then
        if powerprofilesctl set "$profile" 2>/dev/null; then
            if [[ $isNotify == true ]]; then
                local icon=""
                case "$profile" in
                    performance)
                        icon="⚡"
                        ;;
                    balanced)
                        icon="⚖"
                        ;;
                    power-saver)
                        icon="🔋"
                        ;;
                    *)
                        icon="⚙"
                        ;;
                esac
                notify-send -a "HyDE Notify" -r 9 -t 2000 -i "$icon" "Power Profile" "Set to: $profile"
            fi
        else
            [[ $isNotify == true ]] && notify-send -a "HyDE Notify" -r 9 -t 3000 -u critical "Power Profile" "Failed to set profile: $profile"
            exit 1
        fi
    else
        [[ $isNotify == true ]] && notify-send -a "HyDE Notify" -r 9 -t 3000 -u critical "Power Profile" "power-profiles-daemon is not installed"
        exit 1
    fi
}

# Print usage
print_usage() {
    cat << EOF
Usage: $(basename "$0") [option]

Options:
    cycle, c          Cycle to next power profile
    auto, a           Set to auto mode (TLP manages automatically)
    performance, p    Set to performance mode
    balanced, b       Set to balanced mode
    power-saver, s    Set to power saver mode
    get, g            Get current power profile
    list, l           List available power profiles

Examples:
    $(basename "$0") cycle        # Cycle to next profile (auto/performance/balanced/power-saver)
    $(basename "$0") auto         # Enable auto mode (TLP manages)
    $(basename "$0") performance  # Set to performance mode
    $(basename "$0") balanced     # Set to balanced mode
    $(basename "$0") power-saver   # Set to power saver mode
    $(basename "$0") get          # Show current profile
EOF
    exit 1
}

# Main
case "${1:-cycle}" in
    cycle|c)
        cycle_profile
        ;;
    auto|a)
        enable_auto_mode
        ;;
    performance|p)
        set_profile "performance"
        ;;
    balanced|b)
        set_profile "balanced"
        ;;
    power-saver|s|powersaver)
        set_profile "power-saver"
        ;;
    get|g)
        local current=$(get_current_profile)
        if [[ "$current" == "auto" ]]; then
            echo "Current profile: auto (TLP managing)"
            if [ "$has_tlp" = true ] && command -v tlp-stat > /dev/null 2>&1; then
                tlp-stat -s 2>/dev/null | head -5
            fi
        else
            echo "Current profile: $current"
        fi
        ;;
    list|l)
        echo "Available profiles: $(get_available_profiles)"
        ;;
    *)
        print_usage
        ;;
esac
