#!/usr/bin/env bash
#|---/ /+--------------------------------------+---/ /|#
#|--/ /-| Script to install LazyVim           |--/ /-|#
#|-/ /--| After neovim is installed          |-/ /--|#
#|/ /---+--------------------------------------+/ /---|#

scrDir=$(dirname "$(realpath "$0")")
# shellcheck disable=SC1091
if ! source "${scrDir}/../global_fn.sh"; then
    echo "Error: unable to source global_fn.sh..."
    exit 1
fi

# Check if neovim is installed
if ! command -v nvim &> /dev/null; then
    print_log -y "[LAZYVIM] " -b " :: " "neovim not found, skipping lazyvim installation"
    exit 0
fi

# Check if lazyvim is already installed (check for lua/config/lazy.lua which is LazyVim-specific)
if [ -d "${HOME}/.config/nvim" ] && [ -f "${HOME}/.config/nvim/lua/config/lazy.lua" ]; then
    print_log -g "[LAZYVIM] " -b " :: " "LazyVim is already installed"
    exit 0
fi

print_log -c "[LAZYVIM] " -b "installing :: " "LazyVim"

# Backup existing nvim config if it exists and it's not LazyVim
if [ -d "${HOME}/.config/nvim" ] && [ ! -f "${HOME}/.config/nvim/lua/config/lazy.lua" ]; then
    print_log -y "[LAZYVIM] " -b "backing up :: " "existing nvim config"
    backup_dir="${HOME}/.config/nvim.backup.$(date +%Y%m%d_%H%M%S)"
    mv "${HOME}/.config/nvim" "${backup_dir}"
    print_log -g "[LAZYVIM] " -b "backed up to :: " "${backup_dir}"
fi

# Install LazyVim
if [ ${flg_DryRun:-0} -eq 0 ]; then
    # Safety check: ensure we're in the right directory
    if [ ! -d "${HOME}/.config" ]; then
        mkdir -p "${HOME}/.config"
    fi
    
    # Remove existing nvim config only if it's not LazyVim
    if [ -d "${HOME}/.config/nvim" ] && [ ! -f "${HOME}/.config/nvim/lua/config/lazy.lua" ]; then
        rm -rf "${HOME}/.config/nvim"
    elif [ -d "${HOME}/.config/nvim" ]; then
        print_log -g "[LAZYVIM] " -b " :: " "LazyVim already installed, skipping"
        exit 0
    fi
    
    # Check if git is available
    if ! command -v git &> /dev/null; then
        print_log -r "[LAZYVIM] " -b "failed :: " "git is not installed"
        exit 1
    fi
    
    # Clone LazyVim starter
    if git clone https://github.com/LazyVim/starter "${HOME}/.config/nvim" 2>/dev/null; then
        print_log -g "[LAZYVIM] " -b "installed :: " "LazyVim successfully"
        print_log -c "[LAZYVIM] " -b " :: " "Run 'nvim' to start LazyVim"
    else
        print_log -r "[LAZYVIM] " -b "failed :: " "Could not install LazyVim (check internet connection)"
        exit 1
    fi
else
    print_log -c "[LAZYVIM] " -b "would install :: " "LazyVim (dry run)"
fi

