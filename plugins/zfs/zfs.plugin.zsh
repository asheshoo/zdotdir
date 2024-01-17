#
# zfs - Add zfs binary to path if installed
#

[[ -d /usr/local/zfs/bin ]] || return 1

path = (
    /usr/local/zfs/bin(N)
    $path
)