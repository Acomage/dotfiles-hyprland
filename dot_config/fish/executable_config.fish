function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
end

alias pamcan pacman
alias ls 'eza --icons'
alias clear "printf '\033[2J\033[3J\033[1;1H'"
alias q 'qs -c ii'

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end

alias n nvim
alias c clear

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

alias doom='/home/acomage/.config/emacs/bin/doom'

alias ghc='/home/acomage/.ghcup/bin/ghc'
alias cabal='/home/acomage/.ghcup/bin/cabal'
alias stack='/home/acomage/.ghcup/bin/stack'

alias agda='/home/acomage/.local/bin/agda'
alias agda-mode='/home/acomage/.local/bin/agda-mode'
