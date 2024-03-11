#!usr/bin/emv zsh
# Load plugin functions.
fpath=(${0:A:h}/functions $fpath)
autoload -U $fpath[1]/*(.:t)

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PAGER=bat
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'