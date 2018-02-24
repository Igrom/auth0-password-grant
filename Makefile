INSTALL_PATH = /usr/local/bin
CONFIG_PATH = $(HOME)/.config/auth0-password-grant

all: install

install: main_install doc

main_install:
	sudo cp auth0-password-grant $(INSTALL_PATH)
	sudo chmod +x /usr/local/bin/auth0-password-grant
	mkdir -p $(CONFIG_PATH)
	cp -i config $(CONFIG_PATH)
	chmod u+x $(CONFIG_PATH)/config
	$(EDITOR) $(CONFIG_PATH)/config

doc:
	mkdir -p man/man1 man/man5
	gzip -c doc/auth0-password-grant.1 > man/man1/auth0-password-grant.1.gz
	gzip -c doc/auth0-password-grant.5 > man/man5/auth0-password-grant.5.gz
	sudo cp -a man/* /usr/local/man
