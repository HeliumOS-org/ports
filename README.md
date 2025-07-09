## Addons for HeliumOS

An addons system based on OverlayFS, inspired by FreeBSD Ports.

Addons in this repository will use upstream binaries if possible and build from source if necessary.

***WARNING!*** HeliumOS Addons is currently ***experimental***.

## Usage

Download repository

```shell
sudo mkdir -p /var/usraddons
sudo git clone -b 10 https://github.com/HeliumOS-org/Addons.git /usr/addons
```

View available addons

```shell
sudo make -C /usr/addons \
  available
```

Install addon
```shell
sudo make -C /usr/addons/misc/hello \
  install clean
```

Install multiple addons
```
sudo make -C /usr/addons \
  install clean \
  ADDONS='editors/vscode sysutils/tmux'
```

View installed addons
```shell
sudo make -C /usr/addons \
  status
```

Uninstall addon
```shell
sudo make -C /usr/addons/misc/hello \
  uninstall
```

Update addon
```
sudo git -C /usr/addons \
  pull
sudo make -C /usr/addons \
  install clean \
  ADDONS=editors/vscode
```
