NAME = neovim
TREE_PATH = editors/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

build: clean
	mkdir -p \
		$(PREFIX)

	curl -L \
		-o workdir/nvim.tar.gz \
		https://github.com/neovim/neovim/releases/download/v0.11.2/nvim-linux-x86_64.tar.gz

	mkdir -p \
		$(PREFIX)
	tar -xzvf \
		workdir/nvim.tar.gz \
		-C workdir/
	mv \
		workdir/nvim-linux-x86_64/* \
		$(PREFIX)

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
