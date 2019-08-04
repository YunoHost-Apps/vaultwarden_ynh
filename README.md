# Bitwarden for YunoHost

[![Integration level](https://dash.yunohost.org/integration/bitwarden.svg)](https://dash.yunohost.org/appci/app/bitwarden)  
[![Install Bitwarden with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=bitwarden)

> *This package allow you to install Bitwarden quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
Open source password management solutions.

**Shipped version:** 1.9.1

## Important points to read before installing

1. **Bitwarden** require a dedicated **root domain**, eg. bitwarden.domain.tld
1. At the end of the installation, the admin user will receive a mail with the admin_token used to access https://bitwarden.domain.tld/admin.

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

LDAP and HTTP auth are not supported

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/bitwarden%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/bitwarden/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/bitwarden%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/bitwarden/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/bitwarden%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/bitwarden/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/bitwarden_ynh/issues
 * App website: https://bitwarden.com/
 * Upstream app repository: https://github.com/dani-garcia/bitwarden_rs
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/bitwarden_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/bitwarden_ynh/tree/testing --debug
or
sudo yunohost app upgrade bitwarden -u https://github.com/YunoHost-Apps/bitwarden_ynh/tree/testing --debug
```
