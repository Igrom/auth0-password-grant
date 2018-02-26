all:
	mkdir -p bin
	cp auth0-password-grant bin
	[ -z "$(CONFIG_PATH)" ] || sed -i "s|CONFIG_PATH=.*|CONFIG_PATH=\"$(CONFIG_PATH)\"|" bin/auth0-password-grant
