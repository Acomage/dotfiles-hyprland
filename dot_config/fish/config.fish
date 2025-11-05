source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
end

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

# set PATH of Doom emacs
# alias doom="/home/acomage/.config/emacs/bin/doom"
