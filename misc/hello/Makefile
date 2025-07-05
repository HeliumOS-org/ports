NAME = hello
TREE_PATH = misc/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

HELLO_VERSION = 2.9

build: clean
	mkdir -p \
    	$(PREFIX)

	curl -L \
		-o workdir/hello.tar.gz \
		https://ftpmirror.gnu.org/gnu/hello/hello-$(HELLO_VERSION).tar.gz
	cd workdir && tar -xzvf \
		hello.tar.gz

	cd workdir/hello-$(HELLO_VERSION) && \
	    ./configure --prefix=/usr/local

	make -C workdir/hello-$(HELLO_VERSION) \
	    install DESTDIR=$(PREFIX)
	mv \
		$(PREFIX)/usr/local/* \
		$(PREFIX)/
	rm -rf \
		$(PREFIX)/usr

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
