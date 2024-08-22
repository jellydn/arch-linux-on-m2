<h1 align="center">Welcome to arch-linux-on-m2 👋</h1>
<p>
  How to install Arch Linux on a Macbook Pro M2
</p>

[![Arch Linux](https://i.gyazo.com/a741427b8452da194e6840ae613f4173.png)](https://gyazo.com/a741427b8452da194e6840ae613f4173)

## Pre-requisites

- [VMware Fusion Pro](https://blogs.vmware.com/teamfusion/2024/05/fusion-pro-now-available-free-for-personal-use.html)
- [Arch Linux ARM ISO](https://release.archboot.net/aarch64/latest/iso/)

## Usage

After install with archboot iso, you will need to install the following packages:

```sh
sudo pacman -Syu
```

Then, you will need to install the gnome desktop environment:

```sh
sudo pacman -S gnome
```

After that, you will need to install gdm:

```sh
sudo pacman -S gdm
```

Then, you will need to enable gdm:

```sh
sudo systemctl enable gdm.service
```

Finally, you will need to reboot:

```sh
sudo reboot
```

## Install VMware Tools

```sh
sudo pacman -S base-devel
```

```sh
git clone https://github.com/daimaou92/install-arch-vmwarefusion-techpreview.git
cd after/openvmtools
sh build.sh
reboot
```

## Enable key repeat

```sh
xset r rate 200 30
```

## Resources

- [How to Install GNOME in Arch Linux](https://phoenixnap.com/kb/arch-linux-gnome)
- [The Ultimate Guide to i3 Customization in Linux](https://itsfoss.com/i3-customization/)
- [mitchellh/nixos-config: My NixOS configurations.](https://github.com/mitchellh/nixos-config)
- [daimaou92/install-arch-vmwarefusion-techpreview](https://github.com/daimaou92/install-arch-vmwarefusion-techpreview)
- [Installing Arch Linux is EASY [ A Tutorial ] -- Linux for Newbs EP 1](https://www.youtube.com/watch?v=8YE1LlTxfMQ)

## Show your support

Give a ⭐️ if this project helped you!
