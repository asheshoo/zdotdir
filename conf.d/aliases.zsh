#
# aliases - Zsh and bash aliases
#

# References
# - https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.vh7hhm6th
# - https://github.com/webpro/dotfiles/blob/master/system/.alias
# - https://github.com/mathiasbynens/dotfiles/blob/master/.aliases
# - https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/common-aliases/common-aliases.plugin.zsh
#

# single character shortcuts - be sparing!
alias _=sudo
alias l=ls
alias g=git

# mask built-ins with better defaults
alias ping='ping -c 5'
alias vi=vim
alias nv=nvim
# alias grep="command grep --exclude-dir={.git,.vscode} --color=auto"

# directories
alias secrets="cd ${XDG_DATA_HOME:=~/.local/share}/secrets"

# more ways to ls
alias ll='ls -lh'
alias la='ls -lAh'
alias lsa="ls -aG"
alias ldot='ls -ld .*'

# safety first
alias mv='mv -i'
# alias rm='rm -i'
alias cp='cp -i'

# fix typos
alias get=git
alias quit='exit'
alias cd..='cd ..'
alias zz='exit'

# tar
alias tarls="tar -tvf"
alias untar="tar -xf"

# date/time
alias timestamp="date '+%Y-%m-%d %H:%M:%S'"
alias datestamp="date '+%Y-%m-%d'"
alias isodate="date +%Y-%m-%dT%H:%M:%S%z"
alias utc="date -u +%Y-%m-%dT%H:%M:%SZ"
alias unixepoch="date +%s"

# find
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# disk usage
alias biggest='du -s ./* | sort -nr | awk '\''{print $2}'\'' | xargs du -sh'
alias dux='du -x --max-depth=1 | sort -n'
alias dud='du -d 1 -h'
alias duf='du -sh *'

# url encode/decode
alias urldecode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; \
    print (ul.quote_plus(sys.argv[1]))"'

# misc
alias please=sudo
alias zshrc='${EDITOR:-vim} "${ZDOTDIR:-$HOME}"/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias cls="clear && printf '\e[3J'"

# print things
alias print-fpath='for fp in $fpath; do echo $fp; done; unset fp'
alias print-path='echo $PATH | tr ":" "\n"'
alias print-functions='print -l ${(k)functions[(I)[^_]*]} | sort'

# auto-orient images based on exif tags
alias autorotate="jhead -autorot"

# dotfiles
alias dotf='cd "$DOTFILES"'
alias dotfed='cd "$DOTFILES" && ${VISUAL:-${EDITOR:-vim}} .'
alias dotfl="cd \$DOTFILES/local"
alias fdot='cd ${XDG_CONFIG_HOME:=$HOME/.config}/fish'
alias fconf=fdot
alias zdot='cd $ZDOTDIR'

# java
# alias setjavahome="export JAVA_HOME=\`/usr/libexec/java_home\`"

# todo-txt
alias t="todo.sh"
alias todos="$VISUAL $HOME/Desktop/todo.txt"

# grep highlighting
# alias bzegrep="bzegrep --color=auto"
# alias bzfgrep="bzfgrep --color=auto"
# alias bzgrep="bzgrep --color=auto"
# alias egrep="egrep --color=auto"
# alias fgrep="fgrep --color=auto"
# alias grep="grep --color=auto"
# alias xzegrep="xzegrep --color=auto"
# alias xzfgrep="xzfgrep --color=auto"
# alias xzgrep="xzgrep --color=auto"
# alias zegrep="zegrep --color=auto"
# alias zfgrep="zfgrep --color=auto"
# alias zgrep="zgrep --color=auto"
# alias zipgrep="zipgrep --color=auto"
# vim: ft=zsh sw=2 ts=2 et
