# Vaultwarden pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/vaultwarden.svg)](https://dash.yunohost.org/appci/app/vaultwarden) ![](https://ci-apps.yunohost.org/ci/badges/vaultwarden.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/vaultwarden.maintain.svg)  
[![Installer Vaultwarden avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Vaultwarden rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Gérez les mots de passe et autres informations sensibles

**Version incluse :** 1.22.1~ynh1

**Démo :** https://vault.bitwarden.com/#/register

## Captures d'écran

![](./doc/screenshots/screenshot1.png)

## Avertissements / informations importantes

* Other infos that people should be aware of, such as:
    * At the end of the installation, the admin user will receive a mail with the admin_token used to access https://your.domain.tld/vaultwarden/admin.
    * How to configure this app: by an admin panel at https://vaultwarden.domain.tld/admin.

## Documentations et ressources

* Site officiel de l'app : https://bitwarden.com/
* Documentation officielle utilisateur : https://help.bitwarden.com/
* Documentation officielle de l'admin : https://github.com/dani-garcia/vaultwarden/wiki
* Dépôt de code officiel de l'app : https://github.com/dani-garcia/vaultwarden
* Documentation YunoHost pour cette app : https://yunohost.org/app_vaultwarden
* Signaler un bug : https://github.com/YunoHost-Apps/vaultwarden_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
ou
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps