# Fastmail (electron wrapper)

 - Sets font scaling to 1.4x
 - Requires npm and yarn
 - Not yet in AUR
 - `make` generates pacman archive with desktop entry

```
(yharnam) master-* ~/dev/fastmail-appimage $ make
yarn add electron-builder --dev
yarn add v1.9.4
[1/4] Resolving packages...
[2/4] Fetching packages...
[3/4] Linking dependencies...
[4/4] Building fresh packages...
success Saved 1 new dependency.
info Direct dependencies
└─ electron-builder@20.27.1
info All dependencies
└─ electron-builder@20.27.1
Done in 3.46s.
yarn dist
yarn run v1.9.4
$ electron-builder
  • electron-builder version=20.27.1
  • loaded configuration file=package.json ("build" field)
  • writing effective config file=dist/builder-effective-config.yaml
  • no native production dependencies
  • packaging       platform=linux arch=x64 electron=1.8.4 appOutDir=dist/linux-unpacked
  • building        target=AppImage arch=x6

(yharnam) master-* ~/dev/fastmail-appimage $ ls dist
total 237M
drwxr-xr-x 3 hq1 4.0K Aug 11 22:38 .
drwxrwxr-x 6 hq1 4.0K Aug 11 22:37 ..
-rw-r--r-- 1 hq1  186 Aug 11 22:37 builder-effective-config.yaml
-rw-r--r-- 1 hq1 100M Aug 11 22:38 fastmail-1.0.0.pacman
-rwxr-xr-x 1 hq1 137M Aug 11 22:37 fastmail-1.0.0-x86_64.AppImage
-rw-r--r-- 1 hq1  382 Aug 11 22:38 latest-linux.yml
drwxr-xr-x 4 hq1 4.0K Aug 11 22:37 linux-unpacked

(yharnam) master-* ~/dev/fastmail-appimage $ sudo pacman -U dist/fastmail-1.0.0.pacman
[sudo] password for hq1:
loading packages...
resolving dependencies...
looking for conflicting packages...

Packages (9) gtk-sharp-2-2.12.45-1  libappindicator-gtk2-12.10.0-12  libappindicator-gtk3-12.10.0-12  libappindicator-sharp-12.10.0-12
             libgdiplus-5.6-1  libindicator-gtk2-12.10.1-7  libindicator-gtk3-12.10.1-7  mono-5.12.0.260-1  fastmail-1.0.0-1

Total Installed Size:  520.25 MiB

:: Proceed with installation? [Y/n] Y
(9/9) checking keys in keyring                                                           [###################################################] 100%
(8/9) checking package integrity                                                         [###################################################] 100%
(8/9) loading package files                                                              [###################################################] 100%
(9/9) checking for file conflicts                                                        [###################################################] 100%
(9/9) checking available disk space                                                      [###################################################] 100%
:: Processing package changes...
(1/9) installing libindicator-gtk2                                                       [###################################################] 100%
(2/9) installing libappindicator-gtk2                                                    [###################################################] 100%
(3/9) installing libindicator-gtk3                                                       [###################################################] 100%
(4/9) installing libappindicator-gtk3                                                    [###################################################] 100%
(5/9) installing libgdiplus                                                              [###################################################] 100%
(6/9) installing mono                                                                    [###################################################] 100%
Mono Certificate Store Sync - version 5.12.0.0
Populate Mono certificate store from a concatenated list of certificates.
Copyright 2002, 2003 Motus Technologies. Copyright 2004-2008 Novell. BSD licensed.

Importing into legacy system store:
I already trust 134, your new list has 134
Import process completed.

Importing into BTLS system store:
I already trust 134, your new list has 134
Import process completed.
(7/9) installing gtk-sharp-2                                                             [###################################################] 100%
(8/9) installing libappindicator-sharp                                                   [###################################################] 100%
(9/9) installing fastmail                                                                [###################################################] 100%
:: Running post-transaction hooks...
(1/4) Updating icon theme caches...
(2/4) Registering binary formats...
(3/4) Arming ConditionNeedsUpdate...
(4/4) Updating the desktop file MIME type cache...
```
