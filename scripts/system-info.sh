#!/bin/bash


echo "=============================="
echo "      MY FEDORA SYSTEM"
echo "=============================="

echo "OS:       $(cat /etc/os-release | grep '^PRETTY_NAME=' | cut -d '"' -f2)"
echo "Kernel:   $(uname -r)"
echo "Host:     $(hostname)"
echo "CPU:      $(lscpu | grep 'Model name' | cut -d ':' -f2 | xargs)"
echo "GPU:"
lspci | grep -Ei 'VGA|3D|Display'

echo "RAM:"
free -h | grep Mem

echo "Desktop:  $XDG_CURRENT_DESKTOP"
echo "WM:       $XDG_SESSION_DESKTOP"
echo "Shell:    $SHELL"

echo "=============================="
