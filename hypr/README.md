# Hyprland Configuration

This directory documents the Hyprland configuration used on my Fedora workstation.

My setup uses a modular Lua-based configuration instead of keeping everything inside one large `hyprland.conf` file.

## Configuration Structure

The main configuration is organized into several components:

- `hyprland.lua` - main Lua configuration entry point
- `functions.lua` - custom configuration functions
- `monitors.lua` - monitor configuration
- `input.lua` - keyboard, mouse and input settings
- `gestures.lua` - gesture configuration
- `colors.lua` - color configuration
- `conf/` - additional configuration modules

The `conf/` directory contains modules for:

- autostart
- environment
- windows
- decorations
- layout
- workspaces
- keybindings
- window rules
- animations
- ML4W integration

## Why Use a Modular Configuration?

A large Hyprland configuration can become difficult to understand and maintain.

Splitting the configuration into modules makes it easier to:

1. Find a specific setting.
2. Change one part without searching through one huge file.
3. Understand what each component controls.
4. Keep configuration organized as the setup grows.

## My Current Setup

This configuration is based on a Fedora + Hyprland + ML4W environment.

The repository does not contain a direct copy of every file from my personal configuration. Instead, it documents the structure and selected configuration that is useful for understanding and reproducing the setup.
