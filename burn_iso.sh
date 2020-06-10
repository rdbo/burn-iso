#!/bin/bash
if [ $# -ne 2 ]; then
    echo "[*] Usage: \n sudo ./burn_iso.sh <iso_path> <device>"
    exit 1
elif [ "$EUID" -ne 0 ]; then
    echo "[!] Please run as root"
    exit 1
fi

dd if=$1 of=$2
