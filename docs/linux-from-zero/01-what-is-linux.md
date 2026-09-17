# What Is Linux?

Before installing Fedora or customizing Hyprland, it is important to understand what Linux actually is.

---

## 1. Linux Is a Kernel

The most technically correct definition is:

> Linux is a kernel.

A kernel is the core software that sits between the hardware and the rest of the operating system.

For example:

```text
Applications
     ↓
System Libraries / Tools
     ↓
Linux Kernel
     ↓
Hardware

The kernel communicates with:

    CPU

    RAM

    Storage

    GPU

    Keyboard

    Mouse

    Network hardware

    USB devices

You normally do not interact with the kernel directly.

Programs communicate with the kernel through system calls and other interfaces.
2. What Does an Operating System Do?

An operating system manages the computer.

It provides a way for applications to use hardware without every application having to control the hardware directly.

For example, suppose a program wants to save a file.

The program does not normally tell the SSD:

"Put these exact electrical signals here."

Instead, it asks the operating system to create or write a file.

The operating system and kernel handle the lower-level work.
3. Kernel vs Operating System

This distinction is important.
Kernel

The kernel is the core component.

Linux is the kernel.
Operating System

An operating system contains much more than the kernel.

A Linux-based operating system can contain:

    Linux kernel

    System libraries

    Command-line tools

    Package manager

    Services

    Desktop environment or window manager

    Applications

    Configuration files

So when someone says:

    "I use Linux."

They usually mean:

    "I use an operating system based on the Linux kernel."

4. What Is GNU?

You will often hear the term:

GNU/Linux

GNU is a large collection of free and open-source software.

It includes many important command-line programs and system components.

For example, tools such as:

ls
cp
mv
rm
cat

are commonly provided by GNU core utilities on Linux systems.

This is one reason you may sometimes see Linux-based systems referred to as:

GNU/Linux

5. What Is User Space?

Linux systems can roughly be divided into two areas:

        USER SPACE
────────────────────────
Applications
Shell
Desktop
Services
Utilities

        KERNEL SPACE
────────────────────────
Linux Kernel

        HARDWARE
────────────────────────
CPU
RAM
GPU
Storage
Network

User Space

Most programs run here.

Examples:

    Firefox

    Spotify

    Kitty

    Git

    Bash

    Hyprland

Kernel Space

The Linux kernel operates here.

The kernel has much more direct access to hardware and system resources.

This separation helps prevent normal applications from directly interfering with the core system.
6. What Happens When You Open an Application?

Suppose you run:

firefox

A simplified version of what happens is:

You type:
firefox
   ↓
Shell receives command
   ↓
Shell finds Firefox
   ↓
Firefox starts
   ↓
Firefox requests system resources
   ↓
Linux kernel manages those resources
   ↓
Firefox communicates with the graphical system
   ↓
Window appears on your screen

There are many more steps internally, but this is the basic idea.
7. What Is a Process?

A running program is represented by a process.

For example:

Firefox
Spotify
Kitty
Hyprland

can each have one or more processes.

Every process has information such as:

    Process ID (PID)

    Memory usage

    CPU usage

    User

    Parent process

You can see running processes with:

ps

Or:

ps aux

Another useful command is:

top

which shows running processes and resource usage.
8. What Is a PID?

PID means:

Process ID

Every running process gets an ID.

For example:

PID     PROGRAM
1024    bash
2051    firefox
3010    spotify

The exact numbers will be different on every system.

You can use a PID to inspect or manage a process.
9. What Is a Service?

A service is a program that runs in the background to perform a particular task.

Examples can include:

    Network services

    Bluetooth services

    Audio services

    Login services

    System management services

Linux commonly uses systemd to manage many system services.

You can check a service with:

systemctl status SERVICE_NAME

For example:

systemctl status bluetooth

10. What Is the Filesystem?

Linux organizes files differently from Windows.

Windows commonly uses drive letters:

C:\
D:\
E:\

Linux uses a single directory tree.

It starts at:

/

This is called the root directory.

A simplified Linux filesystem looks like:

/
├── home
├── etc
├── usr
├── var
├── tmp
├── dev
├── proc
└── boot

11. What Is /home?

Your personal files are normally stored under:

/home

For example:

/home/ADITYA_GOD

This is your home directory.

You can represent your own home directory using:

~

So:

cd ~

means:

    Go to my home directory.

And:

cd ~/Documents

means:

    Go to the Documents folder inside my home directory.

12. What Is /etc?

/etc contains many system configuration files.

For example, applications and system components can store configuration there.

You should not randomly edit files inside /etc.

Configuration files should be changed when you understand what they control.
13. What Is /usr?

/usr contains many programs, libraries and other system resources.

You may see directories such as:

/usr/bin
/usr/lib
/usr/share

For example:

/usr/bin/

contains many executable programs.
14. What Is a Shell?

A shell is a command interpreter.

It allows you to communicate with the system using commands.

A common shell is:

Bash

Another popular shell is:

Zsh

There is also:

Fish

When you type:

ls

the shell interprets the command and runs the appropriate program.
15. What Is sudo?

You will frequently see commands such as:

sudo dnf install git

sudo allows an authorized user to run a command with elevated privileges.

Normal users do not have unrestricted access to the entire system.

This is intentional.

For example, installing system software generally requires administrator privileges.
16. Why Does Linux Ask for a Password?

When you use:

sudo

Linux may ask for your password.

This is an additional protection against accidentally or maliciously changing important parts of the system.

For example:

sudo rm ...

can potentially delete important files.

Therefore, do not blindly add sudo to commands.
17. What Is Open Source?

Linux is open-source software.

This means its source code is available under the terms of its license.

Open source does not simply mean:

    "Everything is free."

It refers to the availability of source code and the rights provided by the applicable open-source license.

Different projects use different licenses.
18. Why Are There So Many Linux Distributions?

Because Linux is open source, organizations and communities can build different operating systems around it.

This results in distributions such as:

Fedora
Ubuntu
Debian
Arch
openSUSE
Linux Mint

They can use the same Linux kernel while making different choices about:

    Software

    Package management

    Release cycles

    Desktop environments

    Security

    Configuration

    Default applications

19. Fedora in This Project

This project uses:

Fedora Linux

Fedora is therefore the base operating system.

Later, we will add other layers:

Fedora
   ↓
Wayland
   ↓
Hyprland
   ↓
ML4W configuration
   ↓
Waybar / Quickshell / Hyprlock / Hypridle
   ↓
Applications

Each component has a different job.

Understanding these layers makes troubleshooting much easier.
20. Linux Is Not Just a Terminal

One common misconception is:

    Linux = black terminal window.

Not true.

Linux can provide a complete graphical desktop.

You can use:

    Firefox

    Spotify

    Steam

    VS Code

    Discord

    File managers

    Games

    Creative software

    Development tools

The terminal is simply another way of interacting with the system.
21. The Important Idea

Do not memorize every command immediately.

First understand the structure:

HARDWARE
    ↓
LINUX KERNEL
    ↓
SYSTEM SOFTWARE
    ↓
DESKTOP / WINDOW SYSTEM
    ↓
APPLICATIONS

Once you understand this structure, terms like:

Linux
Fedora
Kernel
Wayland
Hyprland
Shell
systemd
Package Manager
Waybar
Quickshell

stop looking like random technical words.

They are simply different pieces of the system.
Next

Now that we understand what Linux is, the next question is:

What exactly is Fedora, and why would someone choose Fedora instead of another Linux distribution?


LETS HOP TO MY NEXT GUIDE ...
WHAT IS FEDORA???????

I USE LINUX BTW.....
