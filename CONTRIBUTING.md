## Contributing to HeliumOS Addons

### Adding a new Addon

1. Check if addon is already in the repository
2. Choose the path for the addon. Use the [FreeBSD ports tree](https://cgit.freebsd.org/ports/tree/) for reference
3. Add Makefile for addon within new directory within the tree path
    1. Use [./misc/hello](./misc/hello)` and [./devel/uv](./devel/uv) for reference
    2. All build files should remain within a `workdir` subdirectory
