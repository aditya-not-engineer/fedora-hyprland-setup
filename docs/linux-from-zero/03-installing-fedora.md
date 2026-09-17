# Installing Fedora

This guide explains the basic process of moving from a Windows computer to Fedora Linux.

This is written for someone who has never installed Linux before.

---

## 1. Before You Start

Installing an operating system can modify the storage drive.

Before doing anything:

- Back up important files.
- Make sure important documents are stored somewhere safe.
- Make sure you know which disk you are installing Fedora on.
- Keep the laptop connected to power.
- Have a stable internet connection available.

Do not start an installation until important data has been backed up.

---

# 2. What Are We Actually Installing?

We are installing:

```text
Fedora Linux

Fedora will become the operating system on the computer.

A simplified setup looks like:

Computer
   ↓
UEFI
   ↓
Fedora bootloader
   ↓
Linux kernel
   ↓
Fedora
   ↓
Desktop
3. Download the Fedora Installer

Fedora provides official installation images.

The installer is normally downloaded as an:

ISO

An ISO is an image of an installation medium.

You can write this image to a USB drive and boot the computer from it.

4. What Is a Bootable USB?

A normal USB drive contains files.

A bootable USB contains an operating-system image prepared so that the computer can start software from it.

The process is roughly:

Fedora ISO
    ↓
Write ISO to USB
    ↓
Restart computer
    ↓
Boot from USB
    ↓
Fedora installer
5. Creating the USB

You need:

A USB drive
Fedora ISO
A computer capable of writing the ISO

A tool such as Fedora Media Writer can be used to create the bootable USB.

The important idea is:

The ISO must be written to the USB correctly.

Simply copying the .iso file onto the USB is not the same thing as creating a bootable installer.

6. Booting From the USB

Insert the USB into the computer.

Restart the computer.

The computer normally starts through UEFI firmware.

You may need to open the boot menu.

The exact key depends on the manufacturer.

Common boot-menu keys include:

F12
F11
F8
Esc

Check your computer manufacturer's documentation if you are unsure.

7. What Is the Boot Menu?

The boot menu lets you choose which device the computer should start from.

You may see options such as:

Windows Boot Manager
Fedora
UEFI: USB Drive

To start the Fedora installer, select the USB device.

8. Fedora Live Environment

Fedora can provide a live environment from the installation USB.

This means Fedora can run from the USB before you install it onto the internal storage.

This is useful because you can test things such as:

Display
Keyboard
Mouse
Wi-Fi
Basic hardware functionality

The live environment is not necessarily the same as the final installed system.

9. Start the Installation

Once you are ready, start the Fedora installation program.

The installer will ask for information such as:

Language
Keyboard layout
Installation disk
Time zone
User account
Password

Read each screen carefully.

10. Choosing the Installation Disk

This is one of the most important steps.

A computer can have multiple storage devices.

For example:

SSD 1
└── 512 GB

SSD 2
└── 1 TB

USB
└── 16 GB

Make sure Fedora is being installed on the intended internal drive.

Do not select a disk simply because its name looks familiar.

Check:

Capacity
Model
Existing partitions
Device name
11. What Is a Partition?

A partition is a logical section of a storage device.

For example:

Physical SSD
└── Partition 1
└── Partition 2
└── Partition 3

Windows commonly creates several partitions for different purposes.

Linux can also use multiple partitions.

Modern Linux installations can use a simpler partition layout managed by the installer.

12. What Is a Filesystem?

A filesystem determines how files are organized and stored on a partition.

Linux supports multiple filesystems.

One commonly used filesystem on Fedora installations is:

Btrfs

You may also encounter:

ext4
XFS

The filesystem is different from the partition itself.

Think of it as:

Disk
  ↓
Partition
  ↓
Filesystem
  ↓
Files and directories
13. Windows vs Fedora Storage

Windows commonly presents storage using drive letters:

C:
D:
E:

Linux instead uses one filesystem hierarchy beginning at:

/

For example:

/
├── home
├── etc
├── usr
├── var
└── boot

Your personal files normally live below:

/home
14. User Account

During installation you will create a user account.

For example:

Username: aditya

Your home directory may then be:

/home/aditya

The username and computer hostname are different concepts.

15. Root User

Linux also has a special administrative account called:

root

Root has very high privileges.

Modern desktop Linux systems normally use sudo rather than logging into the graphical desktop directly as root.

For example:

sudo dnf install git

means:

Run the DNF command with administrative privileges.

16. Creating Your Password

Your user account will have a password.

This password may later be required for:

sudo

administrative operations.

Choose a strong password and keep it private.

17. Network Configuration

During installation, Fedora may ask you to connect to a network.

Wi-Fi can normally be configured from the graphical interface.

A network connection is useful for:

Downloading updates
Installing software
Getting additional packages
Activating online accounts
Updating hardware-related software

You can also complete parts of the installation without internet access depending on the installer and installation method.

18. Time Zone and Keyboard

The installer will ask about regional settings.

Select the appropriate:

Language
Keyboard layout
Time zone

These settings affect things such as:

Displayed time
Keyboard behavior
Language
Regional formatting
19. Start the Installation

After reviewing the configuration, start the installation.

The installer will:

Prepare storage
      ↓
Install Fedora
      ↓
Install system software
      ↓
Configure the boot process
      ↓
Create the user

The exact internal process is more complicated, but this is the basic idea.

20. Restart

After installation finishes, restart the computer.

Remove the USB when appropriate so that the computer boots from the internal drive.

You should then reach the newly installed Fedora system.

21. First Boot

The first boot may take a little longer than normal.

You will go through initial setup.

You may configure:

User account
Privacy options
Online accounts
Keyboard
Network
Location/time settings

After completing setup, you should reach the Fedora desktop.

22. Do Not Customize Everything Immediately

A common mistake is installing dozens of customization tools immediately.

Don't.

First make sure the basic system works.

Test:

Wi-Fi
Bluetooth
Audio
Keyboard
Touchpad
Display
Sleep
Restart
Shutdown

Also make sure your important applications work.

A stable base makes later troubleshooting much easier.

23. Update the System

Once Fedora is installed, update the system.

From the terminal:

sudo dnf upgrade

If updates are available, DNF will show what it plans to change.

Read the information before confirming.

24. Reboot After Important Updates

Some updates may require a reboot.

A simple reboot command is:

systemctl reboot

You can also restart from the graphical desktop.

25. Check Your Fedora Version

You can check the operating-system information with:

cat /etc/os-release

You can check the kernel version with:

uname -r

These commands are useful when troubleshooting.

When asking for Linux support, providing your distribution and kernel version can be helpful.

26. Check Your Hardware

Linux provides commands that can help identify hardware.

For example:

lscpu

shows CPU information.

lsblk

shows storage devices and partitions.

lspci

shows many PCI devices such as:

GPU
Network controller
Audio controller

These commands become useful later when troubleshooting hardware.

27. The First Major Difference

After installing Fedora, you may notice that Linux works differently from Windows.

Instead of thinking:

"Where is the Windows equivalent of this button?"

try thinking:

"What component is responsible for this?"

For example:

Installing software
        ↓
Package manager

Window management
        ↓
Desktop / compositor

Background services
        ↓
systemd

Hardware communication
        ↓
Kernel + drivers

Configuration
        ↓
Configuration files + settings

This mindset becomes extremely useful.

28. What Comes After Installation?

The journey doesn't end when Fedora boots.

A typical learning path is:

Install Fedora
      ↓
Update Fedora
      ↓
Learn the terminal
      ↓
Learn the filesystem
      ↓
Install applications
      ↓
Understand drivers
      ↓
Understand Wayland
      ↓
Install/configure Hyprland
      ↓
Customize the desktop
      ↓
Learn troubleshooting
29. The Important Lesson

Installing Fedora is only the first step.

The goal of this project is not:

"Copy a list of commands from the internet."

The goal is:

Understand what each part of the system does.

Once you understand the system, you can build your own setup instead of depending entirely on someone else's configuration.

Next

Now that Fedora is installed, we need to learn how to use it.

The next guide covers:

04-first-steps-after-install.md

It will cover the things you should check and configure immediately after reaching the Fedora desktop.
