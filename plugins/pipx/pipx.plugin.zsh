manpath+=( ${XDG_DATA_HOME}/man(N) )
export PIPX_HOME=${XDG_CACHE_HOME}/pipx

function __pipx-completions-zsh {
    [[ -z "$_DEFAULT_PYTHON" ]] && {
        echo >&2 "Error: ${0:t}: _DEFAULT_PYTHON not defined"
        return 1
    }

    local _py_path="${_DEFAULT_PYTHON%/*}"

    [[ -x "${_py_path}/pipx" ]] || {
        echo >&2 "Error: ${0:t}: pipx not installed"
        return 1
    }

    [[ -x "${_py_path}/register-python-argcomplete" ]] || {
        echo >&2 "Error: ${0:t}: register-python-argcomplete not installed"
        return 1
    }

    "${_py_path}/register-python-argcomplete" pipx
}

cached-eval 'pipx-completions-zsh' __pipx-completions-zsh

# pipx
export PIPX_DEFAULT_PYTHON="${_DEFAULT_PYTHON}"