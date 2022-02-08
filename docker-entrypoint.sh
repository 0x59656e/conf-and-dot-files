#!/bin/bash
set -eo pipefail
shopt -s nullglob

log() {
    local type="$1"
    shift
    # accept argument string or stdin
    local text="$*"
    if [ "$#" -eq 0 ]; then text="$(cat)"; fi
    local dt
    dt="$(date --rfc-3339=seconds)"
    printf '%s [%s] [Entrypoint]: %s\n' "$dt" "$type" "$text"
}

note() {
    mysql_log Note "$@"
}

warn() {
    mysql_log Warn "$@" >&2
}

error() {
    mysql_log ERROR "$@" >&2
    exit 1
}
