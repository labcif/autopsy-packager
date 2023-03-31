# autopsy-packager

[![Github Workflows](https://github.com/labcif/autopsy-packager/actions/workflows/packaging.yml/badge.svg?branch=main)](https://github.com/labcif/autopsy-packager/actions?query=branch%3Amain)
[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/labcif/autopsy-packager/master.svg)](https://results.pre-commit.ci/latest/github/labcif/autopsy-packager/master)

Automatic Github Workflows packager for autopsy

## Installation

Right now the built packages are only available under the CI artifacts. Check out the latest CI build of the matching package version and download the artifacts from there.

### Arch Linux

Be sure to have the following requirements before starting any installation process of Autopsy:

* sleuthkit-java
* openjdk8-jre

If you have an AUR helper, you just need to choose to install either `autopsy` or `autopsy-bin` packages.

Optionally, you can install the provided prebuilt packages by running:

```bash
sudo pacman -U <package-name>.pkg.tar.zst
```

### Debian

#### Automatic installation via install script

The script below will install autopsy and its dependencies, including bellsoft's java jre version 8. Inspect [the script](install_debian_autopsy_4.19.2.sh) before installing, and make sure you are comfortable running it.

Note, the script will ask for the user password in order to use sudo.

Copy the code below and paste on a terminal window.

- Autopsy 4.19.2: `curl https://raw.githubusercontent.com/labcif/autopsy-packager/main/install_debian_autopsy_4.19.2.sh | sudo bash`

#### Sleuth Kit versions associated with each release of autopsy:

- Autopsy 4.17.0 -> [The Sleuth Kit 4.10.1](https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.10.1/sleuthkit-java_4.10.1-1_amd64.deb)
- Autopsy 4.18.0 -> [The Sleuth Kit 4.10.2](https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.10.2/sleuthkit-java_4.10.2-1_amd64.deb)
- Autopsy 4.19.1 -> [The Sleuth Kit 4.11.0](https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.11.0/sleuthkit-java_4.11.0-1_amd64.deb)
- Autopsy 4.19.2 -> [The Sleuth Kit 4.11.1](https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.11.1/sleuthkit-java_4.11.1-1_amd64.deb)
- Autopsy 4.20.0 -> [The Sleuth Kit 4.12.0](https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.12.0/sleuthkit-java_4.12.0-1_amd64.deb)
