#
# __init__: This runs prior to any other conf.d contents.
#

# Apps
export EDITOR=nvim
export VISUAL=code
export PAGER=less

# Set the list of directories that cd searches.
cdpath=(
  $XDG_PROJECTS_DIR(N/)
  $XDG_PROJECTS_DIR/mattmc3(N/)
  $cdpath
)

# fpath=(
#   $HOMEBREW_PREFIX/share/zsh/functions(N)
#   $HOMEBREW_PREFIX/share/zsh/site-functions(N)
#   $fpath
# )

# macOS
if [[ "$OSTYPE" == darwin* ]]; then
  # Make Apple Terminal behave.
  export SHELL_SESSIONS_DISABLE=1
fi

# Enable less wait time between key presses.
export KEYTIMEOUT=1

# Use `< file` to quickly view the contents of any file.
[[ -z "$READNULLCMD" ]] || READNULLCMD=$PAGER
