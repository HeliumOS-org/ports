PORTS = \
    devel/rustup-init \
	editors/vscode \
	misc/hello \
	sysutils/fastfetch \
	sysutils/tmux

PORTS_ = \
    $(foreach port,$(PORTS),$(MAKE) -C $(port) "$@";)

install:
	$(PORTS_)

clean:
	$(PORTS_)

uninstall:
	$(PORTS_)

refresh:
	-sudo umount /usr/local
	sudo mkdir -p \
	    /usr/local \
		/var/lib/ports
	sudo mount -t overlay overlay \
		-o lowerdir=$(shell find /var/lib/ports -mindepth 1 -maxdepth 1 -type d | tr '\n' ':')/usr/local \
        /usr/local

status:
	@echo "Installed ports:"
	@ls /var/lib/ports | tr ' ' '\n' | sed 's,__,/,g'

available:
	@echo 'Available ports:'
	@$(foreach port,$(PORTS),echo "    $(port)";)
