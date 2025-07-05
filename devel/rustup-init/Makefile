NAME = rustup-init
TREE_PATH = devel/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

build: clean
	mkdir -p \
    	$(PREFIX)

	mkdir -p \
		$(PREFIX)/bin/
	curl -L \
		-o $(PREFIX)/bin/rustup-init \
		https://sh.rustup.rs
	chmod +x \
		$(PREFIX)/bin/rustup-init

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
