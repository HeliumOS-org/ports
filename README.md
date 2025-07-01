## Ports for HeliumOS

A ports system based on systemd-sysext

Ports in this ports tree will be binary if possible and built from source if necessary.

**WARNING!** systemd-sysext may cause system instability. HeliumOS Ports is currently ***experimental***.

## Usage

Download ports tree

```shell
sudo git clone -b 10 https://github.com/HeliumOS-org/ports.git /var/ports
```

View available ports

```shell
sudo make -C /var/ports \
  available
```

Install port
```shell
sudo make -C /var/ports/misc/hello \
  install clean refresh
```

Install multiple ports
```
sudo make -C /var/ports \
  install clean refresh \
  PORTS='editors/vscode sysutils/tmux'
```

View installed ports
```shell
sudo make -C /var/ports \
  status
```

Uninstall port
```shell
sudo make -C /var/ports/misc/hello \
  uninstall refresh
```

Update port
```
sudo git -C /var/ports \
  pull
sudo make -C /var/ports \
  install clean refresh \
  PORTS=editors/vscode
```
