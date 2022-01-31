# Vaultwarden pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/vaultwarden.svg)](https://dash.yunohost.org/appci/app/vaultwarden) ![](https://ci-apps.yunohost.org/ci/badges/vaultwarden.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/vaultwarden.maintain.svg)  
[![Installer Vaultwarden avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Vaultwarden rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Alternative implementation of the Bitwarden server API written in Rust and compatible with upstream Bitwarden clients*, perfect for self-hosted deployment where running the official resource-heavy service might not be ideal.

**Version incluse :** 1.24.0~ynh1

**Démo :** https://vault.bitwarden.com/#/register

## Captures d'écran

![](./doc/screenshots/screenshot1.png)

## Avertissements / informations importantes

* Any known limitations, constrains or stuff not working, such as (but not limited to):
    * single-sign on and LDAP integration are not-working
    * installation took a lot of time

* Other infos that people should be aware of, such as:
    * At the end of the installation, the admin user will receive a mail with the admin_token used to access https://your.domain.tld/vaultwarden/admin.
    * You can configure this app using the admin panel at https://vaultwarden.domain.tld/admin.

## Migrate from Bitwarden

This package handle the migration from Bitwarden to Vaultwarden.
For that, you will have to upgrade your Bitwarden application with this repository.
This can only be done from the command-line interface - e.g. through SSH.
Once you're connected, you simply have to execute the following:

```bash
sudo yunohost app upgrade bitwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh --debug
```

The `--debug` option will let you see the full output. If you encounter any issue, please paste it.

## Documentations et ressources

* Documentation officielle utilisateur : https://help.bitwarden.com/
* Documentation officielle de l'admin : https://github.com/dani-garcia/vaultwarden/wiki
* Dépôt de code officiel de l'app : https://github.com/dani-garcia/vaultwarden
* Documentation YunoHost pour cette app : https://yunohost.org/app_vaultwarden
* Signaler un bug : https://github.com/YunoHost-Apps/vaultwarden_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
ou
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps