#!/bin/bash

echo "=============================="
echo "       NVIDIA GPU CHECK"
echo "=============================="

if command -v nvidia-smi >/dev/null 2>&1; then
    echo
    echo "NVIDIA driver:"
    nvidia-smi --query-gpu=name,driver_version,memory.total --format=csv

    echo
    echo "NVIDIA modules:"
    lsmod | grep nvidia
else
    echo
    echo "nvidia-smi was not found."
    echo "NVIDIA driver may not be installed."
fi

echo
echo "=============================="
