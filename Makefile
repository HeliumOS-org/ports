PORTS = \
	editors/vscode \
	misc/hello \
	sysutils/tmux

PORTS_ = \
    $(foreach port,$(PORTS),$(MAKE) -C $(port) "$@";)

raw:
	$(PORTS_)

install:
	$(PORTS_)

clean:
	$(PORTS_)

uninstall:
	$(PORTS_)

refresh:
	systemd-sysext refresh

status:
	systemd-sysext status

available:
	@echo 'Available ports:'
	@$(foreach port,$(PORTS),echo "    $(port)";)
