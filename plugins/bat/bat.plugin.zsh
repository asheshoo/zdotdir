# https://github.com/sharkdp/bat

autoload-dir ${0:A:h}/functions

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PAGER=bat
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
alias b=bat