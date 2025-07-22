NAME = lua54
TREE_PATH = lang/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

LUA_VERSION = 5.4.8

build: clean
	mkdir -p \
    	$(PREFIX)

	curl -L \
		-o workdir/lua.tar.gz \
		https://www.lua.org/ftp/lua-$(LUA_VERSION).tar.gz
	tar -xzvf \
		workdir/lua.tar.gz \
		-C workdir
	
	$(MAKE) -C workdir/lua-$(LUA_VERSION) linux

	mkdir -p \
		$(PREFIX)/bin/
	cp \
		workdir/lua-$(LUA_VERSION)/src/lua \
		$(PREFIX)/bin/
	cp \
		workdir/lua-$(LUA_VERSION)/src/luac \
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
