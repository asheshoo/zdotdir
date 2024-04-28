#
# python
#

# Load plugin functions.
autoload-dir ${0:A:h}/functions

(( $+commands[mise] )) || {
    echo >&2 "Error: ${0:t}: mise not installed"
    return 1
}

export _DEFAULT_PYTHON=$(mise which python3) || {
    echo >&2 "Error: $0: mise which python3 failed"
    return 1
}

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
# alias pyva="source .venv/bin/activate"

# jupyter
export JUPYTER_CONFIG_DIR="${JUPYTER_CONFIG_DIR:-$XDG_CONFIG_HOME/jupyter}"
