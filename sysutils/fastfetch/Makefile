NAME = fastfetch
TREE_PATH = sysutils/

ROOT = workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

raw: clean
	$(UTIL) extension-release

	curl -L \
		-o workdir/fastfetch.tar.gz \
		https://github.com/fastfetch-cli/fastfetch/releases/download/2.47.0/fastfetch-linux-amd64.tar.gz

	tar -xzvf \
		workdir/fastfetch.tar.gz \
		-C workdir/

	mkdir -p \
		$(ROOT)/usr/local/
	mv \
		workdir/fastfetch-linux-amd64/usr/* \
		$(ROOT)/usr/local/

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
