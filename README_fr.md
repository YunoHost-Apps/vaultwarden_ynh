# vaultwarden pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/vaultwarden.svg)](https://dash.yunohost.org/appci/app/vaultwarden) ![](https://ci-apps.yunohost.org/ci/badges/vaultwarden.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/vaultwarden.maintain.svg)  
[![Installer vaultwarden avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer vaultwarden rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
vaultwarden est un gestionnaire de mots de passe open source.

**Version incluse :** 1.21.0

## Points importants à lire avant l'installation

Après l'installation, l'utilisateur admin recevra un e-mail avec le admin_token à utiliser pour accéder à l'administration de vaultwarden https://your.domain.tld/vaultwarden/admin.

## Captures d'écran

![](https://vaultwarden.com/images/hero.png)

## Démo

* [Démo officielle](https://vault.vaultwarden.com/#/register)

## Configuration

Comment configurer cette application : via le panneau d'administration https://vaultwarden.domain.tld/admin.

## Documentation

 * Documentation officielle : https://help.vaultwarden.com/ et https://github.com/dani-garcia/vaultwarden/wiki

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge? **Non**
* L'application peut-elle être utilisée par plusieurs utilisateurs ? **Oui**

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/vaultwarden.svg)](https://ci-apps.yunohost.org/ci/apps/vaultwarden/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/vaultwarden.svg)](https://ci-apps-arm.yunohost.org/ci/apps/vaultwarden/)

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/vaultwarden_ynh/issues
 * Site de l'application : https://vaultwarden.com/
 * Dépôt de l'application principale : https://github.com/dani-garcia/vaultwarden
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
ou
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```
