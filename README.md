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

### Step 2: Run the Installation Script

After installing Arch Linux, run the `install.sh` script to set up the GNOME desktop environment and GDM:

```sh
sh install.sh
```

This script will:

- Update the system packages
- Install the GNOME desktop environment
- Install and enable GDM
- Reboot the system

### Step 3: Install VMware Tools

Run the `openvm-tools.sh` script to install VMware Tools:

```sh
sh openvm-tools.sh
```

This script will:

- Install base-devel package
- Clone the VMware Tools repository
- Build and install VMware Tools
- Reboot the system

````

## Enable key repeat

To enable key repeat, run the following command:

```sh
xset r rate 200 30
````

## Resources

- [How to Install GNOME in Arch Linux](https://phoenixnap.com/kb/arch-linux-gnome)
- [The Ultimate Guide to i3 Customization in Linux](https://itsfoss.com/i3-customization/)
- [mitchellh/nixos-config: My NixOS configurations.](https://github.com/mitchellh/nixos-config)
- [daimaou92/install-arch-vmwarefusion-techpreview](https://github.com/daimaou92/install-arch-vmwarefusion-techpreview)
- [Installing Arch Linux is EASY [ A Tutorial ] -- Linux for Newbs EP 1](https://www.youtube.com/watch?v=8YE1LlTxfMQ)

## Show your support

Give a ⭐️ if this project helped you!
