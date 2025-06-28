NAME = hello

ROOT = workdir/$(NAME)/
UTIL = $(MAKE) -C .. -f util.Makefile NAME=$(NAME)

raw: clean
	$(UTIL) extension-release

	mkdir -p \
		$(ROOT)/usr/bin/
	cp hello.in \
		$(ROOT)/usr/bin/hello

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
