# vaultwarden for YunoHost

[![Integration level](https://dash.yunohost.org/integration/vaultwarden.svg)](https://dash.yunohost.org/appci/app/vaultwarden) ![](https://ci-apps.yunohost.org/ci/badges/vaultwarden.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/vaultwarden.maintain.svg)  
[![Install vaultwarden with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install vaultwarden quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
vaultwarden is a open source password manager.

**Shipped version:** 1.22.2

## Important points to read before installing

At the end of the installation, the admin user will receive a mail with the admin_token used to access https://your.domain.tld/vaultwarden/admin.

## Screenshots

![](https://bitwarden.com/images/hero.png)

## Demo

* [Official demo](https://vault.bitwarden.com/#/register)

## Configuration

How to configure this app: by an admin panel at https://vaultwarden.domain.tld/admin.

## Documentation

 * Official documentation: https://help.bitwarden.com/ and https://github.com/dani-garcia/vaultwarden/wiki

## YunoHost specific features

#### Multi-user support

* Are LDAP and HTTP auth supported? **No**
* Can the app be used by multiple users? **Yes**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/vaultwarden.svg)](https://ci-apps.yunohost.org/ci/apps/vaultwarden/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/vaultwarden.svg)](https://ci-apps-arm.yunohost.org/ci/apps/vaultwarden/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/vaultwarden_ynh/issues
 * App website: https://bitwarden.com/
 * Upstream app repository: https://github.com/dani-garcia/vaultwarden
 * YunoHost website: https://yunohost.org/

## Migrate from Bitwarden

This package handle the migration from Bitwarden to Vaultwarden.
For that, you will have to upgrade your Bitwarden application with this repository.
This can only be done from the command-line interface - e.g. through SSH.
Once you're connected, you simply have to execute the following:

```bash
sudo yunohost app upgrade bitwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh --debug
```

The `--debug` option will let you see the full output. If you encounter any issue, please paste it.

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
or
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```
