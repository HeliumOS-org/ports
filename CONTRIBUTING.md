## Contributing to HeliumOS Addons

### Adding a new Addon

1. Check if addon is already in the repository
2. Choose a path for the addon. Use the [FreeBSD ports tree](https://cgit.freebsd.org/ports/tree/) for reference
3. Add a Makefile within the new addon directory
    1. Use [./misc/hello](./misc/hello)` and [./devel/uv](./devel/uv) for reference
    2. All build files should remain within a `workdir` subdirectory
