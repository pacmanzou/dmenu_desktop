PREFIX = /usr/local

install: all
	@echo installing executable to $(PREFIX)/bin/
	@mkdir -p "$(PREFIX)/bin/"
	@cp -f dmenu_desktop "$(PREFIX)/bin/"
	@chmod 755 "$(PREFIX)/bin/dmenu_desktop"

uninstall:
	@echo removing executable from $(PREFIX)/bin/
	@rm -f "$(PREFIX)/bin/dmenu_desktop"

reinstall:
	@echo removing executable from $(PREFIX)/bin/
	@rm -f "$(PREFIX)/bin/dmenu_desktop"
	@echo installing executable to $(PREFIX)/bin/
	@mkdir -p "$(PREFIX)/bin/"
	@cp -f dmenu_desktop "$(PREFIX)/bin/"
	@chmod 755 "$(PREFIX)/bin/dmenu_desktop"

.PHONY: all clean install uninstall reinstall
