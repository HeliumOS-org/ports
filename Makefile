ADDONS = \
	devel/anyzig \
	devel/rustup-init \
	devel/uv \
	editors/neovim \
	editors/vscode \
	lang/lua51 \
	lang/lua52 \
	lang/lua53 \
	lang/lua54 \
	misc/hello \
	sysutils/fastfetch \
	sysutils/restic \
	sysutils/tmux \
	www/node \
	www/gohugo

ADDONS_ = \
    $(foreach addon,$(ADDONS),$(MAKE) -C $(addon) "$@";)

install:
	$(ADDONS_)

clean:
	$(ADDONS_)

uninstall:
	$(ADDONS_)

refresh:
	-sudo umount /usr/local -l
	sudo mkdir -p \
	    /usr/local \
	    /var/lib/addons
	sudo mount -t overlay overlay \
		-o lowerdir=$(shell find /var/lib/addons -mindepth 1 -maxdepth 1 -type d | tr '\n' ':')/usr/local \
        /usr/local

status:
	@echo "Installed addons:"
	@ls /var/lib/addons | tr ' ' '\n' | sed 's,__,/,g'

available:
	@echo 'Available addons:'
	@$(foreach addon,$(ADDONS),echo "    $(addon)";)
