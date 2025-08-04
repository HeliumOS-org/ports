NAME = restic
TREE_PATH = sysutils/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

build: clean
	mkdir -p \
		$(PREFIX)

	curl -L \
		-o workdir/restic.bz2 \
		https://github.com/restic/restic/releases/download/v0.18.0/restic_0.18.0_linux_amd64.bz2
	bzip2 -dvf \
		workdir/restic.bz2
	mv workdir/restic \
		workdir/restic_

	mkdir -p \
		$(PREFIX)/bin
	mv workdir/restic_ \
		$(PREFIX)/bin/restic
	chmod +x \
		$(PREFIX)/bin/restic

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
