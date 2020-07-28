#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

print_uptime() {
    local T=$(awk -F" " '{print $1}' /proc/uptime)
    local s=$((T%60))
    local m=$((T/60%60))
    local H=$((T/60/60%24))
    local D=$((T/60/60/24%30))
    local M=$((T/60/60/24/30%12))
    local Y=$((T/60/60/24/365))
    (( $Y > 0 )) && printf '%d-' $Y
    (( $M > 0 )) && printf '%02d-' $M
    (( $D > 0 )) && printf '%02dT' $D
    (( $H > 0 )) && printf '%02d:' $H
    (( $m > 0 )) && printf '%02d:' $m
    printf '%02d' $s
}

main() {
  print_uptime
}

main
