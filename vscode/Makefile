NAME = vscode

ROOT = workdir/$(NAME)/
UTIL = $(MAKE) -C .. -f util.Makefile NAME=$(NAME)

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
		/var/lib/
	mv \
	    workdir/VSCode-linux-x64 \
		$(ROOT)/usr/lib/vscode

	mkdir -p \
		$(ROOT)/usr/bin/
	ln -s \
		/usr/lib/vscode/bin/code \
		$(ROOT)/usr/bin/
	ln -s \
		/usr/lib/vscode/bin/code-tunnel \
		$(ROOT)/usr/bin/

	mkdir -p \
		$(ROOT)/usr/share/applications/
	cp \
		vscode.desktop \
		$(ROOT)/usr/share/applications/

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
