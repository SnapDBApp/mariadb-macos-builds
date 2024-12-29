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

## Disclaimer
These builds are unofficial and provided as-is. They are intended for convenience and may not receive the same level of testing or support as official MariaDB distributions. Use them at your own risk.

## Source Code
In compliance with the GNU General Public License (GPLv2), the source code used to build these binaries is available at:  

[MariaDB Downloads Page](https://mariadb.org/download)  
If you require the exact build scripts or additional details about modifications (if any), please check the source or contact the maintainer(s).