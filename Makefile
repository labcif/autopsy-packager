include autopsy-version.env

all: package-debian

get:
	@mkdir -p out/
	@sh -c "cd out/; [ ! -f '$(NAME)-$(VERSION).zip' ] && curl -L 'https://github.com/sleuthkit/$(NAME)/releases/download/$(NAME)-$(VERSION)/$(NAME)-$(VERSION).zip' -O || :"
	@cp Autopsy.desktop out/

package-debian: get
package-debian:
	./package-debian.sh '$(NAME)' '$(VERSION)' '$(PKGREL)'
