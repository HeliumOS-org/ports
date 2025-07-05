NAME = uv
TREE_PATH = devel/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

build: clean
	mkdir -p \
    	$(PREFIX)

	curl -L \
		-o workdir/uv.tar.gz \
		https://github.com/astral-sh/uv/releases/download/0.7.19/uv-x86_64-unknown-linux-gnu.tar.gz
	tar -xzvf \
		workdir/uv.tar.gz \
		-C workdir

	mkdir -p \
		$(PREFIX)/bin/
	mv \
		workdir/uv-x86_64-unknown-linux-gnu/* \
		$(PREFIX)/bin/

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
