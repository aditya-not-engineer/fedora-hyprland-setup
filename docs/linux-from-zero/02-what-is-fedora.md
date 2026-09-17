# What Is Fedora?

Now that we understand Linux, we can understand Fedora.

The simplest explanation is:

> Fedora is a Linux distribution.

It is a complete operating system built around the Linux kernel.

---

## 1. Linux vs Fedora

This distinction is important.

### Linux

Linux is the kernel.

### Fedora

Fedora is a complete operating system that uses the Linux kernel.

Think of it like this:

```text
Linux
  ↓
Kernel

Fedora
  ↓
Linux Kernel
+ System software
+ Package manager
+ Libraries
+ Services
+ Applications
+ Desktop

So Fedora is not a replacement for Linux.

Fedora is one of the operating systems built using Linux.

2. What Is a Linux Distribution?

A Linux distribution is a collection of software built around the Linux kernel.

A distribution normally provides:

Linux kernel
System libraries
Package manager
System services
Software repositories
Default applications
Installation tools
Security configuration
Desktop environment

Different distributions make different choices.

Some popular distributions are:

Fedora
Ubuntu
Debian
Arch Linux
openSUSE
Linux Mint

They all use the Linux kernel, but their systems are not identical.

3. Who Develops Fedora?

Fedora is developed by the Fedora Project.

The project is sponsored by Red Hat.

Fedora is an open-source project with contributions from a large community and organizations.

Fedora acts as an important place where newer Linux technologies can be developed, tested and integrated.

4. Fedora Editions

Fedora is available in different editions and variants.

One important example is:

Fedora Workstation

Fedora Workstation is designed for desktop and laptop computers.

It provides a graphical desktop and is suitable for:

Programming
Web browsing
School and university work
Development
Gaming
General desktop use

This is the type of Fedora that this project started from.

5. Fedora Uses GNOME by Default

Fedora Workstation normally uses:

GNOME

as its default desktop environment.

GNOME provides things such as:

Application launcher
Desktop interface
Settings
Window management
Notifications
System menus

A fresh Fedora Workstation installation therefore looks very different from a customized Hyprland setup.

For example:

Fresh Fedora Workstation
        ↓
      GNOME
        ↓
   Applications

Our setup eventually becomes:

Fedora
   ↓
Wayland
   ↓
Hyprland
   ↓
ML4W configuration
   ↓
Waybar / Quickshell / Hyprlock / Hypridle
6. What Is DNF?

Fedora uses DNF as its package-management tool.

Package management is one of the most important parts of Linux.

Instead of manually downloading an installer for every program, you can often install software through the package manager.

For example:

sudo dnf install git

This asks Fedora's package-management system to install Git.

You can update installed packages with:

sudo dnf upgrade

You can search for software with:

dnf search firefox
7. What Is an RPM?

Fedora uses the RPM package format.

RPM originally stood for:

Red Hat Package Manager

You may therefore encounter files ending in:

.rpm

For example:

some-program.rpm

DNF can manage RPM packages and their dependencies.

8. What Are Dependencies?

A dependency is software that another program needs to work.

For example:

Program A
   ↓
needs Library B
   ↓
needs Library C

If Program A requires B and C, those components are dependencies.

A package manager helps handle these relationships.

This is one of the reasons package managers are useful.

9. What Is a Repository?

A repository is a collection of software packages.

Fedora provides repositories containing software that can be installed through the package manager.

For example:

sudo dnf install git

DNF searches the configured repositories, finds the required package and installs it along with required dependencies.

10. What Is RPM Fusion?

You may encounter RPM Fusion when setting up Fedora.

RPM Fusion provides additional software packages that are not included in Fedora's official repositories for various reasons, including licensing and distribution considerations.

It provides repositories commonly known as:

RPM Fusion Free
RPM Fusion Nonfree

RPM Fusion is commonly used by Fedora users for additional software and hardware-related packages.

For example, NVIDIA drivers are commonly installed through RPM Fusion on Fedora systems.

11. Why Are Software Repositories Important?

Imagine installing ten programs on Windows.

You might have to:

Open browser
    ↓
Find website
    ↓
Download installer
    ↓
Open installer
    ↓
Install

On Fedora, many programs can instead be installed through the package manager:

sudo dnf install program-name

The package manager can also keep track of:

Version
Dependencies
Installed files
Updates
Package removal
12. What Is systemd?

Fedora uses systemd as its system and service manager.

It is responsible for managing many parts of the system during boot and while the system is running.

It can manage:

Services
Background processes
System startup
Logging
User sessions
Timers

For example:

systemctl status bluetooth

can show the status of the Bluetooth service.

13. What Happens When Fedora Boots?

A simplified boot process looks like:

Power button
     ↓
Firmware / UEFI
     ↓
Bootloader
     ↓
Linux Kernel
     ↓
systemd
     ↓
System services
     ↓
Login screen
     ↓
Desktop session

There are many more details internally, but this gives us the basic structure.

14. What Is UEFI?

UEFI is firmware used by modern computers.

It runs before the operating system.

Its job includes initializing hardware and starting the boot process.

You may have entered the UEFI/BIOS settings when changing things such as:

Boot order
Secure Boot
Hardware settings
Firmware options

The terminology "BIOS" is still commonly used even though modern systems generally use UEFI firmware.

15. What Is a Bootloader?

A bootloader is software that helps start the operating system.

A simplified sequence is:

UEFI
 ↓
Bootloader
 ↓
Linux Kernel
 ↓
systemd
 ↓
Fedora

The bootloader loads the kernel and starts the operating system.

16. Fedora and Hardware

Fedora needs to communicate with your hardware.

The Linux kernel provides much of this functionality, while additional drivers and firmware may also be involved.

For example:

CPU
 ↓
Linux Kernel

GPU
 ↓
Kernel + GPU driver

Wi-Fi
 ↓
Kernel + driver/firmware

Bluetooth
 ↓
Kernel + Bluetooth software/firmware

This is why hardware support can sometimes require troubleshooting on Linux.

17. NVIDIA on Fedora

NVIDIA GPUs require appropriate graphics software to use their full capabilities.

A typical setup can involve:

NVIDIA GPU
     ↓
Linux Kernel
     ↓
NVIDIA Kernel Module
     ↓
NVIDIA User-Space Driver
     ↓
Graphics Applications

The exact stack can be more complicated.

Later in this series we will have a dedicated guide:

17-nvidia-on-linux.md

That guide will explain the NVIDIA side separately.

18. Fedora Is Not Hyprland

This is another important distinction.

Fedora is the operating system.

Hyprland is the Wayland compositor.

They are different components.

Fedora
 │
 ├── Linux Kernel
 ├── systemd
 ├── DNF
 ├── System libraries
 │
 └── Graphical session
       │
       └── Hyprland

This means you can change your graphical environment without replacing Fedora itself.

19. Fedora Is Not ML4W

Similarly:

Fedora ≠ ML4W

Fedora provides the operating-system foundation.

ML4W provides configurations and tools that can help build a customized Hyprland desktop.

So:

Fedora
   ↓
Hyprland
   ↓
ML4W

is a useful simplified way to think about this setup.

20. Why This Project Uses Fedora

This project uses Fedora as the foundation for a customized Linux desktop.

The important thing is not simply:

"Install Fedora."

The important thing is understanding what happens after installation.

The journey is:

Windows
   ↓
Install Fedora
   ↓
Learn Linux basics
   ↓
Configure hardware
   ↓
Install applications
   ↓
Understand Wayland
   ↓
Install/configure Hyprland
   ↓
Customize the desktop
   ↓
Troubleshoot problems
   ↓
Document everything
21. Fedora Is Only the Beginning

A Linux desktop is not one giant program.

It is a collection of components working together.

For example:

                 Fedora
                    │
          ┌─────────┴─────────┐
          │                   │
      Linux Kernel          systemd
          │                   │
          └─────────┬─────────┘
                    │
                  Wayland
                    │
                Hyprland
                    │
          ┌─────────┼─────────┐
          │         │         │
       Waybar   Quickshell  Hyprlock
                    │
                Applications

When something breaks, understanding these layers helps you identify where the problem actually is.

22. The Main Lesson

If you remember only one thing from this guide, remember this:

Linux = Kernel

Fedora = Linux distribution

GNOME = Desktop Environment

Wayland = Graphical protocol

Hyprland = Wayland compositor

ML4W = Configuration/setup ecosystem

Waybar = Status bar

Quickshell = Desktop UI framework

Hyprlock = Screen locker

Hypridle = Idle management

These are different pieces.

Once you understand that, Linux becomes much less confusing.

Next

Now that we understand Fedora, the next step is:

How do you actually install Fedora and safely move from a Windows computer to Fedora?

That is covered in:

03-installing-fedora....
