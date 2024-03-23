#! /usr/bin/env zsh



if (( $+commands[pipx] )); then
    # cached-eval 'pipx-setup-zsh' zellij setup --generate-completion zsh
elif (( $+commands[mise] )); then
    local _rpa
    _rpa=$(mise which register-python-argcomplete) 
    if [[ $? -ne 0 ]]; then
        echo "${0##*/}: file not found: pipx" >&2
        return 1
    fi
    # eval "$(${_rpa} --shell zsh pipx)"
    # cached-eval 'pipx-setup-zsh' zellij setup --generate-completion zsh
fi

# pipx
manpath+=( ${XDG_DATA_HOME}/man(N) )