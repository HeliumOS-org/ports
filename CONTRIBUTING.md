## Contributing to HeliumOS Ports

### Adding a new port
1. Check if port is already in ports tree
2. Choose the tree path for the port. Use the [FreeBSD ports tree](https://cgit.freebsd.org/ports/tree/) for reference
3. Add Makefile for port within new directory within the tree path
    1. Use [./misc/hello](./misc/hello)` for reference
    2. All build files should remain within a `workdir` subdirectory
