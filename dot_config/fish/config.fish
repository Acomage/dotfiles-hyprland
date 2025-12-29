# source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
end

function fish_prompt --description 'Write out the prompt'
    set -l last_status $status
    set -l normal (set_color normal)
    set -l status_color (set_color brgreen)
    set -l prompt_status ""
    set -q fish_prompt_pwd_dir_length
    or set -lx fish_prompt_pwd_dir_length 0
    set -l suffix '❯'
    if test $last_status -ne 0
        set status_color (set_color $fish_color_error)
        set prompt_status $status_color "[" $last_status "]" $normal
    end
    echo ''
    echo -s (prompt_pwd) (fish_vcs_prompt)
    echo -n -s $status_color $suffix ' ' $normal
end

alias ls="eza --icons"
alias ll="eza -la --group-directories-first --icons"
alias lt="eza -aT --group-directories-first --icons --ignore-glob=".git""

abbr update "sudo pacman -Syu"

abbr n nvim
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

alias proxy="export all_proxy=127.0.0.1:12334;export http_proxy=127.0.0.1:12334;export https_proxy=127.0.0.1:12334"

# set PATH of Doom emacs
alias doom="/home/acomage/.config/emacs/bin/doom"
