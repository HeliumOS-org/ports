NAME = fastfetch
TREE_PATH = sysutils/

PREFIX = workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

build: clean
    mkdir -p \
		$(PREFIX)

	curl -L \
		-o workdir/fastfetch.tar.gz \
		https://github.com/fastfetch-cli/fastfetch/releases/download/2.47.0/fastfetch-linux-amd64.tar.gz

	tar -xzvf \
		workdir/fastfetch.tar.gz \
		-C workdir/

	mkdir -p \
		$(PREFIX)/
	mv \
		workdir/fastfetch-linux-amd64/usr/* \
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
