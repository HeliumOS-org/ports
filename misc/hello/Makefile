NAME = hello
TREE_PATH = misc/

ROOT = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

HELLO_VERSION = 2.9

raw: clean
	$(UTIL) extension-release

	curl -L \
		-o workdir/hello.tar.gz \
		https://ftpmirror.gnu.org/gnu/hello/hello-$(HELLO_VERSION).tar.gz
	cd workdir && tar -xzvf \
		hello.tar.gz

	cd workdir/hello-$(HELLO_VERSION) && \
	    ./configure --prefix=/usr/local

	make -C workdir/hello-$(HELLO_VERSION) \
	    install DESTDIR=$(ROOT)

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
