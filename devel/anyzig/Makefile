NAME = anyzig
TREE_PATH = devel/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

build: clean
	mkdir -p \
    	$(PREFIX)

	mkdir -p \
		$(PREFIX)/bin/
	curl -L \
		-o workdir/anyzig.tar.gz \
		https://github.com/marler8997/anyzig/releases/latest/download/anyzig-x86_64-linux.tar.gz
	tar -xzvf \
		workdir/anyzig.tar.gz \
		-C $(PREFIX)/bin/

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
