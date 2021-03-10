#!/usr/bin/env bash

set -e +o pipefail

pkgname="$1"
pkgver="$2"
pkgrel="$3"

srcdir="$(pwd)/out/"
pkgdir="$(mktemp -p "$(pwd)" -d)"
trap 'rm -rf ${pkgdir}' EXIT

prepare() {
	cd "$srcdir" || return

	#unzip -oK "${pkgname}-${pkgver}.zip"
}

package() {
	cd "$srcdir" || return

	mkdir -p "${pkgdir}/opt/"
	cp -r "${pkgname}-${pkgver}" "${pkgdir}/opt/${pkgname}"

	cd "${pkgname}-${pkgver}" || return

	mkdir -p "${pkgdir}/usr/share/pixmaps/"
	ln -sf "/opt/${pkgname}/icon.ico" "${pkgdir}/usr/share/pixmaps/autopsy.ico"
	install -Dm644 "${srcdir}/Autopsy.desktop" "${pkgdir}/usr/share/applications"

	mkdir -p "${pkgdir}/usr/bin"
	ln -sf "/opt/${pkgname}/bin/autopsy" "${pkgdir}/usr/bin/autopsy"
}

prepare
package

ls -la "${pkgdir}/opt/${pkgname}"

cd "$srcdir"

fpm -s dir -t deb \
	-n "$pkgname" \
	-v "${pkgver}-${pkgrel}" \
	--prefix / \
	-d "sleuthkit (>= 3.0.0)" \
	"${pkgdir}"
