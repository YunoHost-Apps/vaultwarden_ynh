<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Vaultwarden voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/vaultwarden)](https://ci-apps.yunohost.org/ci/apps/vaultwarden/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/vaultwarden)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/vaultwarden)

[![Vaultwarden met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Vaultwarden snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Vaultwarden is a password manager, allowing generation and storage of passwords in a secure way. These are protected by a single password called the "master password".

Clients exist for [Linux, macOS and Windows](https://bitwarden.com/#download), [Android](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden), [iOS](https://itunes.apple.com/app/bitwarden-free-password-manager/id1137397744?mt=8), and as a web browser plug-ins. It is also possible to manage passwords from the web interface.


**Geleverde versie:** 1.33.2~ynh1

**Demo:** <https://vault.bitwarden.com/#/register>

## Schermafdrukken

![Schermafdrukken van Vaultwarden](./doc/screenshots/screenshot.png)

## Documentatie en bronnen

- Officiele gebruikersdocumentatie: <https://help.bitwarden.com/>
- Officiele beheerdersdocumentatie: <https://github.com/dani-garcia/vaultwarden/wiki>
- Upstream app codedepot: <https://github.com/dani-garcia/vaultwarden>
- YunoHost-store: <https://apps.yunohost.org/app/vaultwarden>
- Meld een bug: <https://github.com/YunoHost-Apps/vaultwarden_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
of
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
