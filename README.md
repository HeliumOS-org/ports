## Ports for HeliumOS

A ports system based on systemd-sysext

Ports in this ports tree will be binary if possible and built from source if necessary.

## Usage

Download ports tree

```shell
sudo git clone -b 10 https://github.com/HeliumOS-org/ports.git /var/ports
```

Install port
```
sudo make -C /var/ports/misc/hello \
  install clean refresh
```

Uninstall port
```
sudo make -C /var/ports/misc/hello \
  uninstall refresh
```
