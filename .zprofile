# XDG
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state
export XDG_RUNTIME_DIR=~/.xdg
export XDG_PROJECTS_DIR=~/workspace

# Ensure XDG directories exist.
for _dir in ${(kM)parameters:#XDG_*_HOME} ${(kM)parameters:#XDG_*_DIR}; do
  [[ -d "${(P)_dir}" ]] || mkdir -p "${(P)_dir}"
done
unset _dir

# Add variables for key Zsh directories.
export __zsh_config_dir=${ZDOTDIR:-${XDG_CONFIG_HOME:-$HOME/.config}/zsh}
export __zsh_user_data_dir=${XDG_DATA_HOME:-$HOME/.local/share}/zsh
export __zsh_cache_dir=${XDG_CACHE_HOME:-$HOME/.cache}/zsh
export ZSH_CACHE_DIR="${__zsh_cache_dir}"

# Ensure Zsh directories exist.
for _zdir in __zsh_{config,user_data,cache}_dir; do
  [[ -d "${(P)_zdir}" ]] || mkdir -p ${(P)_zdir}
done
unset _zdir

[[ -d "${__zsh_cache_dir}/completions" ]] || mkdir -p "${__zsh_cache_dir}/completions"

# Custom
export DOTFILES=$XDG_CONFIG_HOME/dotfiles
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export REPO_HOME=$XDG_CACHE_HOME/repos
export ANTIDOTE_HOME=$REPO_HOME

# Ensure path arrays do not contain duplicates.
typeset -gU fpath path cdpath

# Set the list of directories that cd searches.
cdpath=(
  $XDG_PROJECTS_DIR(N/)
  $XDG_PROJECTS_DIR/asheshoo(N/)
  $cdpath
)

# Set the list of directories that Zsh searches for programs.
path=(
  # core
  $HOME/{,s}bin(N)
  $HOME/.local/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  # prefer gnu versions of utilities
  /{usr/local,opt/homebrew}/opt/*/libexec/gnubin(N)
  /usr/local/{,s}bin(N)

  # apps
  /{usr/local,opt/homebrew}/opt/curl/bin(N)

  # path
  $path
)

# prefer gnu versions of utilties
manpath=(
  /{usr/local,opt/homebrew}/opt/*/libexec/gnuman(N)
  $manpath
)

# Apps
export EDITOR=hx
export VISUAL=code
export PAGER=bat
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

# Regional settings
export LANG='en_AU.UTF-8'

# Misc
export KEYTIMEOUT=1
export SHELL_SESSIONS_DISABLE=1 # Make Apple Terminal behave.

# Use `< file` to quickly view the contents of any file.
[[ -z "$READNULLCMD" ]] || READNULLCMD=$PAGER

# vim: ft=zsh sw=2 ts=2 et
