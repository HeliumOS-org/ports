## Ports for HeliumOS

A ports system based on OverlayFS.

Ports in this ports tree will be binary if possible and built from source if necessary.

***WARNING!*** HeliumOS Ports is currently ***experimental***.

## Usage

Download ports tree

```shell
sudo mkdir -p /var/usrports
sudo git clone -b 10 https://github.com/HeliumOS-org/ports.git /usr/ports
```

View available ports

```shell
sudo make -C /usr/ports \
  available
```

Install port
```shell
sudo make -C /usr/ports/misc/hello \
  install clean
```

Install multiple ports
```
sudo make -C /usr/ports \
  install clean \
  PORTS='editors/vscode sysutils/tmux'
```

View installed ports
```shell
sudo make -C /usr/ports \
  status
```

Uninstall port
```shell
sudo make -C /usr/ports/misc/hello \
  uninstall
```

Update port
```
sudo git -C /usr/ports \
  pull
sudo make -C /usr/ports \
  install clean \
  PORTS=editors/vscode
```
