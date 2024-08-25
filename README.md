<h1 align="center">Welcome to arch-linux-on-m2 👋</h1>
<p>
  How to install Arch Linux on a Macbook Pro M2
</p>

[![Arch Linux](https://i.gyazo.com/a741427b8452da194e6840ae613f4173.png)](https://gyazo.com/a741427b8452da194e6840ae613f4173)

## Pre-requisites

- [VMware Fusion Pro](https://blogs.vmware.com/teamfusion/2024/05/fusion-pro-now-available-free-for-personal-use.html)
- [Arch Linux ARM ISO](https://release.archboot.net/aarch64/latest/iso/)

## Usage

<details>
<summary><strong>Step 1: Install Arch Linux</strong></summary>
<p>Follow the instructions to install Arch Linux using the archboot ISO.</p>

- Setup timezone and install in offline mode
  ![Offline mode](https://i.gyazo.com/e5c5b2f659d581cd522d365e05386b7a.gif)
- Setup storage
  ![Part 1](https://i.gyazo.com/67f9debdfd3535e834bab02c42f5beff.gif)
  ![Part 2](https://i.gyazo.com/eb204a7fafc1e161e3964fed95640e67.gif)
- Install packages
  ![Install packages](https://i.gyazo.com/9d5977732aa0c23bc6edfe39d3ef28a5.gif)
- Config system
![Set root password](https://i.gyazo.com/03668f605a12b4d4e91826f7d1222ecf.gif)
![Install Neovim and Systemd](https://i.gyazo.com/7383ac8133d45c9543f9ae73e0c1b3a0.gif)
![Set bash as default shell](https://i.gyazo.com/4c88d05c8689f71be3da30f9afcca13a.gif)
![Create user](https://i.gyazo.com/b4fdf52ba88bdca60a9a4089ba29287f.gif)
![Install bootloader - grub](https://i.gyazo.com/08727354e037b848f55c6a11eba18d5d.gif)
![Reboot](https://i.gyazo.com/7a459c94f32230efad20154a8f06aa38.gif)
</details>

<details>
<summary><strong>Step 2: Run the Installation Script</strong></summary>
<p>At this step, you should have a working Arch Linux system.</p>

- Install git and sudo
  ![Install git and sudo](https://i.gyazo.com/0e5efd00c54c066df26275cee93e63fb.gif)
- Grant the user `sudo` privileges
  ```sh
  nvim /etc/sudoers
  ```
  ![Grant the user](https://i.gyazo.com/13d82ba0055e39849a4c8fa6a2741dc1.gif)
- Clone this repository and run the `install.sh` script
  ```sh
  git clone https://github.com/jellydn/arch-linux-on-m2.git
  cd arch-linux-on-m2
  sh install.sh
  ```
  ![Install](https://i.gyazo.com/5ed1527bf07899ae6fe27b17f5c3c9d3.gif)
- This script will update the system packages, install kitty terminal emulator, install the GNOME desktop environment, install and enable GDM.
- Verify that the GNOME desktop environment is installed correctly
  ```sh
  sudo systemctl status gdm.service
  ```
- Reboot the system
  ```sh
  reboot
  ```
  ![Gnome](https://i.gyazo.com/7699f359a05472a7ff3db8fa92d088a4.gif)
  </details>

<details>
<summary><strong>Step 3: Install VMware Tools</strong></summary>
<p>If you share the folder between the host and the guest, you need to install VMware Tools.</p>

- Warning message:
  ```
  Shared folders will not be available in the virtual machine until VMware Tools is installed and running.
  ```
  ![Image from Gyazo](https://i.gyazo.com/73f69ac3da68a54e9fc594f3440af631.gif)
- Run the `openvm-tools.sh` script to install VMware Tools
  ```sh
  cd arch-linux-on-m2
  sh openvm-tools.sh
  ```
  ![Install OpenVM Tools](https://i.gyazo.com/d6f184300cae564038ddb1f4043f2a14.gif)
- Verify that VMware Tools is installed correctly
  ```sh
  ls -l /mnt/hgfs
  ```
  </details>

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
