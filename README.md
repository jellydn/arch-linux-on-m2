<h1 align="center">Welcome to arch-linux-on-m2 👋</h1>
<p>
  How to install Arch Linux on a Macbook Pro M2
</p>

[![Arch Linux](https://i.gyazo.com/a741427b8452da194e6840ae613f4173.png)](https://gyazo.com/a741427b8452da194e6840ae613f4173)

## Pre-requisites

- [VMware Fusion Pro](https://blogs.vmware.com/teamfusion/2024/05/fusion-pro-now-available-free-for-personal-use.html)
- [Arch Linux ARM ISO](https://release.archboot.net/aarch64/latest/iso/)

## Usage

### Step 1: Install Arch Linux

Follow the instructions to install Arch Linux using the archboot ISO.

- Setup timezone and install in offline mode

[![Offline mode](https://i.gyazo.com/e5c5b2f659d581cd522d365e05386b7a.gif)](https://gyazo.com/e5c5b2f659d581cd522d365e05386b7a)

- Setup storage

[![Part 1](https://i.gyazo.com/67f9debdfd3535e834bab02c42f5beff.gif)](https://gyazo.com/67f9debdfd3535e834bab02c42f5beff)

[![Part 2](https://i.gyazo.com/eb204a7fafc1e161e3964fed95640e67.gif)](https://gyazo.com/eb204a7fafc1e161e3964fed95640e67)

- Install packages

[![Install packages](https://i.gyazo.com/9d5977732aa0c23bc6edfe39d3ef28a5.gif)](https://gyazo.com/9d5977732aa0c23bc6edfe39d3ef28a5)

- Config system

[![Set root password](https://i.gyazo.com/03668f605a12b4d4e91826f7d1222ecf.gif)](https://gyazo.com/03668f605a12b4d4e91826f7d1222ecf)

[![Install Neovim and Systemd](https://i.gyazo.com/7383ac8133d45c9543f9ae73e0c1b3a0.gif)](https://gyazo.com/7383ac8133d45c9543f9ae73e0c1b3a0)

[![Set bash as default shell](https://i.gyazo.com/4c88d05c8689f71be3da30f9afcca13a.gif)](https://gyazo.com/4c88d05c8689f71be3da30f9afcca13a)

[![Create user](https://i.gyazo.com/b4fdf52ba88bdca60a9a4089ba29287f.gif)](https://gyazo.com/b4fdf52ba88bdca60a9a4089ba29287f)

[![Install bootloader - grub](https://i.gyazo.com/08727354e037b848f55c6a11eba18d5d.gif)](https://gyazo.com/08727354e037b848f55c6a11eba18d5d)

[![Reboot](https://i.gyazo.com/7a459c94f32230efad20154a8f06aa38.gif)](https://gyazo.com/7a459c94f32230efad20154a8f06aa38)

### Step 2: Run the Installation Script

At this step, you should have a working Arch Linux system. Now, you can install the GNOME desktop environment and GDM.
[![Arch Linux](https://i.gyazo.com/b3041d675c46c481da5b01e8decfcfd1.gif)](https://gyazo.com/b3041d675c46c481da5b01e8decfcfd1)

Make sure you have `git` and `sudo` installed:

```sh
sudo pacman -Sy git sudo
```

[![Install git and sudo](https://i.gyazo.com/0e5efd00c54c066df26275cee93e63fb.gif)](https://gyazo.com/0e5efd00c54c066df26275cee93e63fb)

Then grant the user `sudo` privileges:

```sh
nvim /etc/sudoers
```

[![Grant the user](https://i.gyazo.com/13d82ba0055e39849a4c8fa6a2741dc1.gif)](https://gyazo.com/13d82ba0055e39849a4c8fa6a2741dc1)

Back to the user, clone this repository and run the `install.sh` script:

```sh
git clone https://github.com/jellydn/arch-linux-on-m2.git
cd arch-linux-on-m2
sh install.sh
```

[![Install](https://i.gyazo.com/5ed1527bf07899ae6fe27b17f5c3c9d3.gif)](https://gyazo.com/5ed1527bf07899ae6fe27b17f5c3c9d3)

This script will:

- Update the system packages
- Install kitty terminal emulator
- Install the GNOME desktop environment
- Install and enable GDM

Verify that the GNOME desktop environment is installed correctly before rebooting the system:

```sh
sudo systemctl status gdm.service
```

Reboot the system:

```sh
reboot
```

You should see the GNOME login screen after rebooting the system:
[![Gnome](https://i.gyazo.com/7699f359a05472a7ff3db8fa92d088aImage from Gyazo4.gif)](https://gyazo.com/7699f359a05472a7ff3db8fa92d088a4)

### Step 3: Install VMware Tools

If you share the folder between the host and the guest, you need to install VMware Tools. You would see the following warning message:

```
Shared folders will not be available in the virtual machine until VMware Tools is installed and running.
```

[![Image from Gyazo](https://i.gyazo.com/73f69ac3da68a54e9fc594f3440af631.gif)](https://gyazo.com/73f69ac3da68a54e9fc594f3440af631)

Run the `openvm-tools.sh` script to install VMware Tools:

```sh
cd arch-linux-on-m2
sh openvm-tools.sh
```

[![Install OpenVM Tools](https://i.gyazo.com/d6f184300cae564038ddb1f4043f2a14.gif)](https://gyazo.com/d6f184300cae564038ddb1f4043f2a14)

This script will:

- Install base-devel package
- Clone the VMware Tools repository
- Build and install VMware Tools
- Reboot the system

Verify that VMware Tools is installed correctly:

```sh
ls -l /mnt/hgfs
```

## Extra packages

This is optional but you can run the `extra.sh` script to install some extra packages:

```sh
cd arch-linux-on-m2
sh extra.sh
```

## Enable key repeat

To enable key repeat, run the following command:

```sh
xset r rate 200 30
```

## Fish shell plugins

```sh
# Install fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
# Git alias
fisher install jhillyerd/plugin-git
# Pure
fisher install pure-fish/pure
```

## Resources

- [How to Install GNOME in Arch Linux](https://phoenixnap.com/kb/arch-linux-gnome)
- [The Ultimate Guide to i3 Customization in Linux](https://itsfoss.com/i3-customization/)
- [10 Things To Do After Installing Arch Linux 2023 ‣ KSKRoyal](https://kskroyal.com/10-things-to-do-after-installing-arch-linux-2023/)
- [mitchellh/nixos-config: My NixOS configurations.](https://github.com/mitchellh/nixos-config)
- [daimaou92/install-arch-vmwarefusion-techpreview](https://github.com/daimaou92/install-arch-vmwarefusion-techpreview)
- [Installing Arch Linux is EASY [ A Tutorial ] -- Linux for Newbs EP 1](https://www.youtube.com/watch?v=8YE1LlTxfMQ)

## Show your support

Give a ⭐️ if this project helped you!
