#!/bin/bash

echo "=============================="
echo "      FEDORA SETUP CHECK"
echo "=============================="

echo ""

echo "Git:"
if command -v git >/dev/null 2>&1
then
    echo "  [OK] Git is installed"
else
    echo "  [NO] Git is not installed"
fi

echo "GitHub CLI:"
if command -v gh >/dev/null 2>&1
then
    echo "  [OK] GitHub CLI is installed"
else
    echo "  [NO] GitHub CLI is not installed"
fi

echo "Hyprland:"
if command -v Hyprland >/dev/null 2>&1
then
    echo "  [OK] Hyprland is installed"
else
    echo "  [NO] Hyprland is not installed"
fi

echo "Kitty:"
if command -v kitty >/dev/null 2>&1
then
    echo "  [OK] Kitty is installed"
else
    echo "  [NO] Kitty is not installed"
fi

echo "Fastfetch:"
if command -v fastfetch >/dev/null 2>&1
then
    echo "  [OK] Fastfetch is installed"
else
    echo "  [NO] Fastfetch is not installed"
fi

echo "Waybar:"
if command -v waybar >/dev/null 2>&1
then
    echo "  [OK] Waybar is installed"
else
    echo "  [NO] Waybar is not installed"
fi

echo "Quickshell:"
if command -v qs >/dev/null 2>&1
then
    echo "  [OK] Quickshell is installed"
else
    echo "  [NO] Quickshell is not installed"
fi

echo "NVIDIA:"
if command -v nvidia-smi >/dev/null 2>&1
then
    echo "  [OK] NVIDIA tools are installed"
else
    echo "  [NO] NVIDIA tools are not installed"
fi

echo ""
echo "=============================="
echo "          CHECK DONE"
echo "=============================="
