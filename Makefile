PREFIX ?= /usr/local
DOCDIR ?= $(PREFIX)/share/warden/doc

all:
	@echo Run \'make install\' to install warden.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p warden.py $(DESTDIR)$(PREFIX)/bin/warden
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@cp -pr themes $(DESTDIR)$(PREFIX)/share/warden
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/warden

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/warden
	@rm -rf $(DESTDIR)$(DOCDIR)
	@rm -rf $(DESTDIR)$(PREFIX)/share/warden
