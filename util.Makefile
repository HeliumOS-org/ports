NAME = placeholder
WORKDIR = ./$(TREE_PATH)/$(NAME)/workdir
TRANSFORMED_NAME = $(shell echo $(TREE_PATH)/$(NAME) | sed -e 's,/,_,g')

workdir: clean
	mkdir $(WORKDIR)

extension-release: workdir
	mkdir -p \
		$(WORKDIR)/$(NAME)/usr/lib/extension-release.d/
	cp extension-release.in \
		$(WORKDIR)/$(NAME)/usr/lib/extension-release.d/extension-release.$(TRANSFORMED_NAME)

raw:
	mksquashfs $(WORKDIR)/$(NAME) $(WORKDIR)/$(TRANSFORMED_NAME).raw

install:
	mkdir -p /var/lib/extensions/
	cp $(WORKDIR)/$(TRANSFORMED_NAME).raw /var/lib/extensions/

clean:
	rm -rf $(WORKDIR)

uninstall:
	rm -f /var/lib/extensions/$(TRANSFORMED_NAME).raw

refresh:
	$(MAKE) refresh

status:
	$(MAKE) status
