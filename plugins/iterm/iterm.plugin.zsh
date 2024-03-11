#!/usr/bin/env zsh

[[ "${TERM_PROGRAM:-}" == "iTerm.app" ]] || return 2

local _isi="/Applications/iTerm.app/Contents/Resources/iterm2_shell_integration.zsh"

if [[ -f "${_isi}" ]]; then
    source "${_isi}" || echo "${0##*/}: failed to load. rc=$?: ${_isi}" >&2
else
    echo "${0##*/}: file not found: ${_isi}" >&2
fi