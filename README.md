# Bitwarden for YunoHost

[![Integration level](https://dash.yunohost.org/integration/bitwarden.svg)](https://dash.yunohost.org/appci/app/bitwarden) ![](https://ci-apps.yunohost.org/ci/badges/bitwarden.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/bitwarden.maintain.svg)  
[![Install Bitwarden with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=bitwarden)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install Bitwarden quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

Bitwarden is a open source password manager.

**Shipped version:** 1.16.2

## Important points to read before installing

At the end of the installation, the admin user will receive a mail with the admin_token used to access https://your.domain.tld/bitwarden/admin.

## Screenshots

![](https://bitwarden.com/images/hero.png)

## Demo

* [Official demo](https://vault.bitwarden.com/#/register)

## Configuration

How to configure this app: by an admin panel at https://bitwarden.domain.tld/admin.

## Documentation

 * Official documentation: https://help.bitwarden.com/ and https://github.com/dani-garcia/bitwarden_rs/wiki

## YunoHost specific features

#### Multi-users support

* Are LDAP and HTTP auth supported? **No**
* Can the app be used by multiple users? **Yes**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/bitwarden%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/bitwarden/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/bitwarden%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/bitwarden/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/bitwarden_ynh/issues
 * App website: https://bitwarden.com/
 * Upstream app repository: https://github.com/dani-garcia/bitwarden_rs
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/bitwarden_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install --debug https://github.com/YunoHost-Apps/bitwarden_ynh/tree/testing
or
sudo yunohost app upgrade --debug bitwarden -u https://github.com/YunoHost-Apps/bitwarden_ynh/tree/testing
```
