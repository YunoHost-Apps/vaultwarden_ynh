<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Vaultwarden pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/vaultwarden.svg)](https://dash.yunohost.org/appci/app/vaultwarden) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/vaultwarden.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/vaultwarden.maintain.svg)

[![Installer Vaultwarden avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Vaultwarden rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Vaultwarden est un gestionnaire de mots de passe, qui permet de générer et de conserver des mots de passe de manière sécurisée. Ces éléments sont protégés par un seul et unique mot de passe appelé « mot de passe maître ».

Il existe des clients pour [Linux, macOS et Windows](https://bitwarden.com/#download), [Android](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden), [iOS](https://itunes.apple.com/app/bitwarden-free-password-manager/id1137397744?mt=8), et comme module d'extension pour navigateur web. Il est aussi possible de gérer ses mot de passe depuis l'interface web.


**Version incluse :** 1.30.1~ynh1

**Démo :** <https://vault.bitwarden.com/#/register>

## Captures d’écran

![Capture d’écran de Vaultwarden](./doc/screenshots/screenshot1.png)

## Documentations et ressources

- Documentation officielle utilisateur : <https://help.bitwarden.com/>
- Documentation officielle de l’admin : <https://github.com/dani-garcia/vaultwarden/wiki>
- Dépôt de code officiel de l’app : <https://github.com/dani-garcia/vaultwarden>
- YunoHost Store : <https://apps.yunohost.org/app/vaultwarden>
- Signaler un bug : <https://github.com/YunoHost-Apps/vaultwarden_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
ou
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
