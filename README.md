# mariadb-macos-builds

[![CI](https://github.com/mariadb-macos-builds/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/mariadb-macos-builds/actions?query=workflow%3Aci+branch%3Amain)
[![License](https://img.shields.io/github/license/mariadb-macos-builds)](./LICENSE)
[![Github All Releases](https://img.shields.io/github/downloads/mariadb-macos-builds/total.svg)]()

This repository features prebuilt tar.gz binary files for MariaDB on macOS. These builds are not officially offered as a download option through MariaDB archive/download channels.

## Usage
1. **Download a Build**:
   - Navigate to the `releases` section of this repository to find prebuilt MariaDB binaries for macOS.
   - Download the appropriate version for your system.

2. **Extract the Archive** _Example_:
   ```bash
   tar -xvzf mariadb-11.6.2-macos14-arm64.tar.gz
   cd mariadb-11.6.2-macos14-arm64

3. **Run MariaDB**:
   Follow the standard MariaDB documentation for setup and configuration:  
   - Using [mariadbd-safe](https://mariadb.com/kb/en/mariadbd-safe/).

## Building from source
1. **Download the Intended Version**:
   - Navigate to the [MariaDB archive](https://archive.mariadb.org/).
   - Download the version you wish to build. For example `mariadb-11.6.2/source/mariadb-11.6.2.tar.gz`.
2. **Set Up Build Environment for Mac**:
   - [Official MariaDB Set Up Instruction](https://mariadb.com/kb/en/Build_Environment_Setup_for_Mac/)
   - Using Brew is recommended here.
3. **Build From Source***:
   - [Official MariaDB Build Instruction](https://mariadb.com/kb/en/generic-build-instructions/)
4. **Create the Binary Tarball**:
   - [Official MariaDB Tarball Build Instruction](https://mariadb.com/kb/en/creating-the-mariadb-binary-tarball/)
5. **GitHub Release**:
   Once finished, you may wish to upload the generated .tar.gz to this GitHub repository under the "[releases](https://github.com/musa11971/mariadb-macos-builds)".
   - Be sure to stick to the naming conventions of .tar.gz files: `mariadb-[version]-macos[osx_version]-[arm64/x86_64].tar.gz`

## Disclaimer
These builds are unofficial and provided as-is. They are intended for convenience and may not receive the same level of testing or support as official MariaDB distributions. Use them at your own risk.

## Source Code
In compliance with the GNU General Public License (GPLv2), the source code used to build these binaries is available at:  

[MariaDB Archive](https://archive.mariadb.org/)  
If you require the exact build scripts or additional details about modifications (if any), please check the source or contact the maintainer(s).