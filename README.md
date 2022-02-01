# autopsy-packager

[![Github Workflows](https://github.com/labcif/autopsy-packager/actions/workflows/packaging.yml/badge.svg?branch=main)](https://github.com/labcif/autopsy-packager/actions?query=branch%3Amain)

Automatic Github Workflows packager for autopsy

## Installation

Be sure to have the following requirements before starting any installation process of Autopsy:

* sleuthkit-java
* openjdk8-jre

Right now the built packages are only available under the CI artifacts. Check out the latest CI build of the matching package version and download the artifacts from there.

### Arch Linux

If you have an AUR helper, you just need to choose to install either `autopsy` or `autopsy-bin` packages.

Optionally, you can install the provided prebuilt packages by running:

```bash
sudo pacman -U <package-name>.pkg.tar.zst
```

### Debian

```bash
sudo apt install <package-name>.deb
```

The Sleuth Kit package .deb files:

- Autopsy 4.9.2 -> [The Sleuth Kit 4.11.1](https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.11.1/sleuthkit-java_4.11.1-1_amd64.deb)
