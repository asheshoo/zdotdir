
if (( $+commands[yazi] )); then
    # Load plugin functions.
    fpath=(${0:A:h}/functions $fpath)
    autoload -U $fpath[1]/*(.:t)
fi
