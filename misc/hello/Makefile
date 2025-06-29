NAME = hello
TREE_PATH = misc/

ROOT = workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

raw: clean
	$(UTIL) extension-release

	mkdir -p \
		$(ROOT)/usr/local/bin/
	cp hello \
		$(ROOT)/usr/local/bin/hello

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
