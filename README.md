# mariadb-macos-builds

This repository features prebuilt tar.gz binary files for MariaDB on macOS. These builds are not officially offered as a download option through MariaDB archive/download channels.

## Usage
1. **Download a Build**:
   - Navigate to the `releases` section of this repository to find prebuilt MariaDB binaries for macOS.
   - Download the appropriate version for your system.

2. **Extract the Archive** _Example_:
   ```bash
   tar -xvzf mariadb-11.6.2-osx10.20-arm64.tar.gz
   cd mariadb-11.6.2-osx10.20-arm64

3. **Run MariaDB**:
   Follow the standard MariaDB documentation for setup and configuration:  
   - Using [mariadbd-safe](https://mariadb.com/kb/en/mariadbd-safe/).

## Building from source
1. **Download the Intended Version**:
   - Navigate to the [MariaDB archive](https://archive.mariadb.org/).
   - Download the version you wish to build.
2. **Set Up Build Environment for Mac**:
   - [Official MariaDB Set Up Instruction](https://mariadb.com/kb/en/Build_Environment_Setup_for_Mac/)
   - Using Brew is recommended here.
3. **Build From Source***:
   - [Official MariaDB Build Instruction](https://mariadb.com/kb/en/generic-build-instructions/)
4. **Create the Binary Tarball**:
   - [Official MariaDB Tarball Build Instruction](https://mariadb.com/kb/en/creating-the-mariadb-binary-tarball/)
5. **GitHub Release**:
   Once finished, you may wish to upload the generated .tar.gz to this GitHub repository under the "[releases](/releases)".

## Disclaimer
These builds are unofficial and provided as-is. They are intended for convenience and may not receive the same level of testing or support as official MariaDB distributions. Use them at your own risk.

## Source Code
In compliance with the GNU General Public License (GPLv2), the source code used to build these binaries is available at:  

[MariaDB Archive](https://archive.mariadb.org/)  
If you require the exact build scripts or additional details about modifications (if any), please check the source or contact the maintainer(s).