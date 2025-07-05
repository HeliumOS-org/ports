NAME = gohugo
TREE_PATH = www/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

build: clean
	mkdir -p \
    	$(PREFIX)

	curl -L \
		-o workdir/hugo.tar.gz \
		https://github.com/gohugoio/hugo/releases/download/v0.147.9/hugo_extended_withdeploy_0.147.9_linux-amd64.tar.gz
	tar -xvf \
		workdir/hugo.tar.gz \
		-C workdir

	mkdir -p \
		$(PREFIX)/bin/
	mv \
		workdir/hugo \
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
