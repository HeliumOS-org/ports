NAME = vscode
TREE_PATH = editors/

PREFIX = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

build: clean
	mkdir -p \
    	$(PREFIX)

	curl -L \
		-o workdir/vscode.tar.gz \
		'https://code.visualstudio.com/sha/download?build=stable&os=linux-x64'
	tar \
		-xzvf \
		workdir/vscode.tar.gz \
		-C workdir

	mkdir -p \
		$(PREFIX)/lib/
	mv \
	    workdir/VSCode-linux-x64 \
		$(PREFIX)/lib/vscode

	mkdir -p \
		$(PREFIX)/bin/
	ln -s \
		/usr/local/lib/vscode/bin/code \
		$(PREFIX)/bin/
	ln -s \
		/usr/local/lib/vscode/bin/code-tunnel \
		$(PREFIX)/bin/

	mkdir -p \
		$(PREFIX)/share/applications/
	cp \
		vscode.desktop \
		$(PREFIX)/share/applications/

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
