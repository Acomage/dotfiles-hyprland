source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
end

alias n="nvim"
alias c="clear"

export EDITOR=nvim

zoxide init fish | source

alias rm_unsafe='/bin/rm'

function rm
    if test (count $argv) -eq 0
        echo "rm: Usage: rm <file_or_directory>"
        return 1
    end
    trash-put $argv
end

# set PATH of Doom emacs
# alias doom="/home/acomage/.config/emacs/bin/doom"
# set PATH of rust-analyzer
set -x PATH $PATH ~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin

# use wayland for electron
export ELECTRON_OZONE_PLATFORM_HINT=auto
