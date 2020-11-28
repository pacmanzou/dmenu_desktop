PREFIX = /usr/local

install: all
	@echo installing executable to $(DESTDIR)$(PREFIX)/bin
	@mkdir -p "$(DESTDIR)$(PREFIX)/bin"
	@cp -f dmenu_desktop "$(DESTDIR)$(PREFIX)/bin"
	@chmod 755 "$(DESTDIR)$(PREFIX)/bin/dmenu_desktop"

uninstall:
	@echo removing executable from $(DESTDIR)$(PREFIX)/bin
	@rm -f "$(DESTDIR)$(PREFIX)/bin/dmenu_desktop"

reinstall:
	@echo removing executable from $(DESTDIR)$(PREFIX)/bin
	@rm -f "$(DESTDIR)$(PREFIX)/bin/dmenu_desktop"
	@echo installing executable to $(DESTDIR)$(PREFIX)/bin
	@mkdir -p "$(DESTDIR)$(PREFIX)/bin"
	@cp -f dmenu_desktop "$(DESTDIR)$(PREFIX)/bin"
	@chmod 755 "$(DESTDIR)$(PREFIX)/bin/dmenu_desktop"

.PHONY: all clean install uninstall reinstall
