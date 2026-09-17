# Fedora Workstation Migration

## Overview

This repository documents the migration and ongoing development of my
personal Linux workstation.

The system was originally running Windows and was later migrated to
Fedora Linux. The goal was not simply to install another operating
system, but to build a workstation that I could understand, configure,
modify, troubleshoot, and maintain myself.

The final environment has evolved into a Fedora-based development,
gaming, and customization workstation using Hyprland as the window
manager.

---

# Why I Left Windows

Windows had become increasingly frustrating for the way I wanted to
use my computer.

The system worked, but I often felt that too much of the experience was
controlled by the operating system rather than by me. Background
processes, unnecessary applications, updates, system behavior, and
configuration limitations made the environment feel difficult to
control.

I wanted an operating system where I could understand what was running,
change how the desktop behaved, configure my own workflow, and actually
learn what was happening underneath the graphical interface.
I USE FEDORA BTW......
Another major motivation was customization.
I USE FEDORA BTW........
I did not want to use a desktop environment where the workflow and
appearance were mostly predetermined. I wanted to build the environment
myself and have control over everything from window management to the
terminal, status bar, wallpapers, system information, and keyboard
shortcuts.

Linux offered that level of control.
AND OFC I USE LINUX BTW IS NOW MY OFFICIAL SLANDER
The decision to move was therefore less about simply wanting a
different operating system and more about wanting to understand and
control my own workstation.
I USE FEDORA BTW.....
---

# The Migration

The migration from Windows to Fedora was a learning process rather than
a single installation step.(I USE LINUX BTW)

After installing Fedora Linux, the initial goal was to establish a
stable daily-use system before beginning extensive customization.

The workstation was then gradually configured around my hardware and
workflow.

The major components became:

- Fedora Linux
- Hyprland
- ML4W configuration
- Waybar
- Quickshell
- Kitty
- Fastfetch
- Hyprlock
- Hypridle
- NVIDIA graphics drivers
- Steam and gaming tools
- Wallpaper management
- Custom shell scripts

Instead of installing everything at once, the environment was built
incrementally and problems were solved as they appeared.

---

# Hardware

The workstation is based on an ASUS Vivobook 16 V3607VU.

## Main hardware

- CPU: Intel Core i5
- RAM: 16 GB
- Storage: Samsung PM9C1a NVMe
- Display: 1920 × 1200
- Integrated GPU: Intel Raptor Lake-P graphics
- Dedicated GPU: NVIDIA GeForce RTX 4050 Laptop GPU
- NVIDIA VRAM: approximately 6 GB

The presence of both Intel integrated graphics and an NVIDIA dedicated
GPU made graphics configuration one of the more important parts of the
migration.

---

# NVIDIA Configuration

Getting the NVIDIA GPU working correctly was one of the first major
parts of configuring the workstation.

The system uses an NVIDIA RTX 4050 Laptop GPU alongside the Intel
integrated graphics.

The NVIDIA driver environment was configured so that applications could
use the dedicated GPU when required.

The installed NVIDIA environment eventually included:

- NVIDIA driver 610.57.04
- CUDA user-mode components
- akmods NVIDIA kernel module
- RPM Fusion NVIDIA packages

GPU functionality was verified using tools such as:

```bash
nvidia-smi




more on the next commits.....
