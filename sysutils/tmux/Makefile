NAME = tmux
TREE_PATH = sysutils/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

build: clean
	mkdir -p \
		$(PREFIX)

	curl -L \
		-o workdir/tmux.appimage \
		https://github.com/nelsonenzo/tmux-appimage/releases/download/3.5a/tmux.appimage
	chmod +x \
		workdir/tmux.appimage
	cd workdir && ./tmux.appimage \
	    --appimage-extract

	cp -r \
		workdir/squashfs-root/usr/* \
		$(PREFIX)/

	mkdir -p \
		$(PREFIX)/libexec/
	mv \
		$(PREFIX)/bin/tmux \
		$(PREFIX)/libexec/_tmux
	mv \
		workdir/squashfs-root/AppRun \
		$(PREFIX)/bin/tmux
	sed -i \
		's,usr/bin/tmux,../libexec/_tmux,g' \
		$(PREFIX)/bin/tmux

	rm \
	    $(PREFIX)/bin/clear \
		$(PREFIX)/bin/reset \
		$(PREFIX)/bin/tabs

install: build
	$(UTIL) install

clean:
	$(UTIL) clean

uninstall:
	$(UTIL) uninstall

refresh:
	$(UTIL) refresh

status:
	$(UTIL) status
