#
# python
#

# Load plugin functions.
fpath=(${0:A:h}/functions $fpath)
autoload -U $fpath[1]/*(.:t)

# workon
export WORKON_HOME="$XDG_DATA_HOME/venvs"
[[ -d "$WORKON_HOME" ]] || mkdir -p "$WORKON_HOME"

# python aliases
alias py3='python3'
alias py='python3'
# alias pip3update="pip3 list --outdated | cut -d ' ' -f1 | xargs -n1 pip3 install -U"
# alias pipup="python -m pip list --outdated | cut -d ' ' -f1 | xargs -n1 pip3 install -U"
alias pyfind='${aliases[ff]:-find} "*.py"'
alias pygrep='${aliases[grep]:-grep} --include="*.py"'
alias pyva="source .venv/bin/activate"

# jupyter
export JUPYTER_CONFIG_DIR="${JUPYTER_CONFIG_DIR:-$XDG_CONFIG_HOME/jupyter}"
