NAME = tmux
TREE_PATH = sysutils/

ROOT = workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

raw: clean
	$(UTIL) extension-release

	curl -L \
		-o workdir/tmux.appimage \
		https://github.com/nelsonenzo/tmux-appimage/releases/download/3.5a/tmux.appimage
	chmod +x \
		workdir/tmux.appimage
	cd workdir && ./tmux.appimage \
	    --appimage-extract

	cp -r \
		workdir/squashfs-root/usr/* \
		$(ROOT)/usr/

	mkdir -p \
		$(ROOT)/usr/libexec/
	mv \
		$(ROOT)/usr/bin/tmux \
		$(ROOT)/usr/libexec/_tmux
	mv \
		workdir/squashfs-root/AppRun \
		$(ROOT)/usr/bin/tmux
	sed -i \
		's,/usr/bin/tmux,/../libexec/_tmux,g' \
		$(ROOT)/usr/bin/tmux

	$(UTIL) raw

install: raw
	$(UTIL) install

clean:
	$(UTIL) clean

uninstall:
	$(UTIL) uninstall

refresh:
	$(UTIL) refresh

status:
	$(UTIL) status
