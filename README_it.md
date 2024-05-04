<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Vaultwarden per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/vaultwarden.svg)](https://dash.yunohost.org/appci/app/vaultwarden) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/vaultwarden.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/vaultwarden.maintain.svg)

[![Installa Vaultwarden con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Vaultwarden su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

Vaultwarden is a password manager, allowing generation and storage of passwords in a secure way. These are protected by a single password called the "master password".

Clients exist for [Linux, macOS and Windows](https://bitwarden.com/#download), [Android](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden), [iOS](https://itunes.apple.com/app/bitwarden-free-password-manager/id1137397744?mt=8), and as a web browser plug-ins. It is also possible to manage passwords from the web interface.


**Versione pubblicata:** 1.29.1~ynh4

**Prova:** <https://vault.bitwarden.com/#/register>

## Screenshot

![Screenshot di Vaultwarden](./doc/screenshots/screenshot1.png)

## Documentazione e risorse

- Documentazione ufficiale per gli utenti: <https://help.bitwarden.com/>
- Documentazione ufficiale per gli amministratori: <https://github.com/dani-garcia/vaultwarden/wiki>
- Repository upstream del codice dell’app: <https://github.com/dani-garcia/vaultwarden>
- Store di YunoHost: <https://apps.yunohost.org/app/vaultwarden>
- Segnala un problema: <https://github.com/YunoHost-Apps/vaultwarden_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
o
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
