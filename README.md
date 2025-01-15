# mariadb-macos-builds

[![License](https://img.shields.io/github/license/SnapDBApp/mariadb-macos-builds)](./LICENSE)
[![Github All Releases](https://img.shields.io/github/downloads/SnapDBApp/mariadb-macos-builds/total.svg)]()

This repository features prebuilt tar.gz binary files for MariaDB on macOS. These builds are not officially offered as a download option through MariaDB archive/download channels.

---

## Choosing an installation package
Installation packages use the pattern `mariadb-<version>-<target>.<extension>`, where`<version>` is the
MariaDB version, `<target>` is the target triple for the platform, and `<extension>` is the archive file
extension.  To find the `<target>` triple for your platform run `uname -m` in your terminal.

## Versioning
This project uses a versioning scheme that is in sync with [MariaDB versioning](https://mariadb.com/kb/en/mariadb-release-model/).
The version comprises `<mariadb major>.<mariadb minor>.<release>`.  
E.g. release `11.8.0` corresponds with `mariadb-11.8.0`.

## Source Code
In compliance with the GNU General Public License (GPLv2), the source code used to build these binaries is available at:  

[MariaDB Archive](https://archive.mariadb.org/)  
If you require the exact build scripts or additional details about modifications (if any), please check the source or contact the maintainer(s).
