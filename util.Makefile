NAME = placeholder
WORKDIR = ./$(TREE_PATH)/$(NAME)/workdir
TRANSFORMED_NAME = $(shell echo $(TREE_PATH)/$(NAME) | sed -e 's,/,_,g')

workdir: clean
	mkdir $(WORKDIR)

install:
	mkdir -p /var/lib/ports
	rm -rf \
		/var/lib/ports/$(TRANSFORMED_NAME)
	cp -r \
	    $(WORKDIR)/$(NAME) \
		/var/lib/ports/$(TRANSFORMED_NAME)
	$(MAKE) refresh

clean:
	rm -rf $(WORKDIR)

uninstall:
	rm -rf /var/lib/ports/$(TRANSFORMED_NAME)
	$(MAKE) refresh

refresh:
	$(MAKE) refresh

status:
	$(MAKE) status
