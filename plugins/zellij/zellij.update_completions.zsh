#!/bin/zsh

_zellij_comp=$__zsh_config_dir/completions/_zellij

[[ $_zellij_comp -nt $commands[zellij] ]] || {
    zellij setup --generate-completion zsh >| $__zsh_config_dir/completions/_zellij
}