NAME = placeholder
WORKDIR = ./$(NAME)/workdir

workdir: clean
	mkdir $(WORKDIR)

extension-release: workdir
	mkdir -p \
		$(WORKDIR)/$(NAME)/usr/lib/extension-release.d/
	cp extension-release.in \
		$(WORKDIR)/$(NAME)/usr/lib/extension-release.d/extension-release.$(NAME)

raw:
	mksquashfs $(WORKDIR)/$(NAME) $(WORKDIR)/$(NAME).raw

install:
	mkdir -p /var/lib/extensions/
	cp $(WORKDIR)/$(NAME).raw /var/lib/extensions/

clean:
	rm -rf $(WORKDIR)

uninstall:
	rm -f /var/lib/extensions/$(NAME).raw

refresh:
	$(MAKE) refresh

status:
	$(MAKE) status
