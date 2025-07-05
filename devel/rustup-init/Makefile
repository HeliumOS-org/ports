NAME = rustup-init
TREE_PATH = devel/

ROOT = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

raw: clean
	$(UTIL) extension-release

	mkdir -p \
		$(ROOT)/usr/local/bin/
	curl -L \
		-o $(ROOT)/usr/local/bin/rustup-init \
		https://sh.rustup.rs
	chmod +x \
		$(ROOT)/usr/local/bin/rustup-init

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
