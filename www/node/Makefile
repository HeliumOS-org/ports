NAME = node
TREE_PATH = www/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

NODE_VERSION=v24.3.0

build: clean
	mkdir -p \
    	$(PREFIX)

	curl -L \
		-o workdir/node.tar.xz \
		https://nodejs.org/dist/$(NODE_VERSION)/node-$(NODE_VERSION)-linux-x64.tar.xz
	tar -xvf \
		workdir/node.tar.xz \
		-C workdir

	mv \
		workdir/node-$(NODE_VERSION)-linux-x64/{bin,include,lib,share} \
		$(PREFIX)/

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
