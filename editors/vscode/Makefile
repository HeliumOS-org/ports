NAME = vscode
TREE_PATH = editors/

ROOT = $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/workdir/$(NAME)/
UTIL = $(MAKE) -C ../.. -f util.Makefile NAME=$(NAME) TREE_PATH=$(TREE_PATH)

raw: clean
	$(UTIL) extension-release

	curl -L \
		-o workdir/vscode.tar.gz \
		'https://code.visualstudio.com/sha/download?build=stable&os=linux-x64'
	tar \
		-xzvf \
		workdir/vscode.tar.gz \
		-C workdir

	mkdir -p \
		$(ROOT)/usr/local/lib/
	mv \
	    workdir/VSCode-linux-x64 \
		$(ROOT)/usr/local/lib/vscode

	mkdir -p \
		$(ROOT)/usr/local/bin/
	ln -s \
		/usr/local/lib/vscode/bin/code \
		$(ROOT)/usr/local/bin/
	ln -s \
		/usr/local/lib/vscode/bin/code-tunnel \
		$(ROOT)/usr/local/bin/

	mkdir -p \
		$(ROOT)/usr/local/share/applications/
	cp \
		vscode.desktop \
		$(ROOT)/usr/local/share/applications/

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
