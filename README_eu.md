<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Vaultwarden YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/vaultwarden.svg)](https://ci-apps.yunohost.org/ci/apps/vaultwarden/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/vaultwarden.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/vaultwarden.maintain.svg)

[![Instalatu Vaultwarden YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Vaultwarden YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Vaultwarden is a password manager, allowing generation and storage of passwords in a secure way. These are protected by a single password called the "master password".

Clients exist for [Linux, macOS and Windows](https://bitwarden.com/#download), [Android](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden), [iOS](https://itunes.apple.com/app/bitwarden-free-password-manager/id1137397744?mt=8), and as a web browser plug-ins. It is also possible to manage passwords from the web interface.


**Paketatutako bertsioa:** 1.30.5~ynh1

**Demoa:** <https://vault.bitwarden.com/#/register>

## Pantaila-argazkiak

![Vaultwarden(r)en pantaila-argazkia](./doc/screenshots/screenshot1.png)

## Dokumentazioa eta baliabideak

- Erabiltzaileen dokumentazio ofiziala: <https://help.bitwarden.com/>
- Administratzaileen dokumentazio ofiziala: <https://github.com/dani-garcia/vaultwarden/wiki>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/dani-garcia/vaultwarden>
- YunoHost Denda: <https://apps.yunohost.org/app/vaultwarden>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/vaultwarden_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
edo
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
