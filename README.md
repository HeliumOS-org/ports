## Addons for HeliumOS

An addons system based on OverlayFS and Pacman, inspired by FreeBSD Ports.

Addons in this repository ending with `-bin` use upstream binaries. The rest are built from source.

***WARNING!*** HeliumOS Addons is currently ***experimental***.

## Usage

Download repository

```shell
sudo mkdir -p /var/usraddons
sudo git clone -b 10 https://github.com/HeliumOS-org/Addons.git /usr/addons
```

View available addons

```shell
find /usr/addons | grep PKGBUILD
```

Install addon
```shell
cd /usr/addons/misc/hello && makepkg -si
```

View installed addons
```shell
pacman -Q
```

Uninstall addon
```shell
sudo pacman -R hello
```

Update addon
```
sudo git -C /usr/addons pull

cd /usr/addons/editors/vscode-bin && makepkg -si
```

Clean addon sources
```
sudo git -C /usr/addons reset --hard
```
