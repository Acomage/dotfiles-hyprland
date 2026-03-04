# source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
end

alias ls="eza --icons"
alias ll="eza -la --group-directories-first --icons"
alias lt="eza -aT --group-directories-first --icons --ignore-glob=".git""

abbr update "sudo pacman -Syu"

abbr n nvim
abbr h helix
abbr c clear

export EDITOR=nvim

zoxide init fish --cmd cd | source

abbr z cd

abbr rm_unsafe /bin/rm

function rm
    if test (count $argv) -eq 0
        echo "rm: Usage: rm <file_or_directory>"
        return 1
    end
    trash-put $argv
end

alias proxy="export all_proxy=127.0.0.1:7897;export http_proxy=127.0.0.1:7897;export https_proxy=127.0.0.1:7897"

# set PATH of Doom emacs
alias doom="/home/acomage/.config/emacs/bin/doom"
