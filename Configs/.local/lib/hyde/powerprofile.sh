#!/usr/bin/env bash
scrDir=$(dirname "$(realpath "$0")")
source "$scrDir/globalcontrol.sh"
isNotify=${POWER_PROFILE_NOTIFY:-true}

# Check if power-profiles-daemon is available
if ! command -v powerprofilesctl > /dev/null 2>&1; then
    [[ $isNotify == true ]] && notify-send -a "HyDE Notify" -r 9 -t 3000 -u critical "Power Profiles" "power-profiles-daemon is not installed"
    exit 1
fi

# Get current profile
get_current_profile() {
    powerprofilesctl get
}

# Get available profiles
get_available_profiles() {
    powerprofilesctl list | grep -E "^\*|^ " | sed 's/^\*\?[[:space:]]*//' | tr '\n' ' '
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
    
    # Calculate next index
    if [[ $current_index -ge 0 ]]; then
        next_index=$(( (current_index + 1) % ${#profiles[@]} ))
    fi
    
    # Set next profile
    local next_profile="${profiles[$next_index]}"
    powerprofilesctl set "$next_profile"
    
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
}

# Set specific profile
set_profile() {
    local profile=$1
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
}

# Print usage
print_usage() {
    cat << EOF
Usage: $(basename "$0") [option]

Options:
    cycle, c     Cycle to next power profile
    performance, p    Set to performance mode
    balanced, b       Set to balanced mode
    power-saver, s    Set to power saver mode
    get, g       Get current power profile
    list, l     List available power profiles

Examples:
    $(basename "$0") cycle        # Cycle to next profile
    $(basename "$0") performance  # Set to performance mode
    $(basename "$0") balanced     # Set to balanced mode
    $(basename "$0") power-saver  # Set to power saver mode
    $(basename "$0") get          # Show current profile
EOF
    exit 1
}

# Main
case "${1:-cycle}" in
    cycle|c)
        cycle_profile
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
        echo "Current profile: $(get_current_profile)"
        ;;
    list|l)
        echo "Available profiles: $(get_available_profiles)"
        ;;
    *)
        print_usage
        ;;
esac

