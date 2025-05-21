<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Vaultwarden dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/vaultwarden)](https://ci-apps.yunohost.org/ci/apps/vaultwarden/)
![Status działania](https://apps.yunohost.org/badge/state/vaultwarden)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/vaultwarden)

[![Zainstaluj Vaultwarden z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Vaultwarden na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

Vaultwarden is a password manager, allowing generation and storage of passwords in a secure way. These are protected by a single password called the "master password".

Clients exist for [Linux, macOS and Windows](https://bitwarden.com/#download), [Android](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden), [iOS](https://itunes.apple.com/app/bitwarden-free-password-manager/id1137397744?mt=8), and as a web browser plug-ins. It is also possible to manage passwords from the web interface.


**Dostarczona wersja:** 1.33.2~ynh1

**Demo:** <https://vault.bitwarden.com/#/register>

## Zrzuty ekranu

![Zrzut ekranu z Vaultwarden](./doc/screenshots/screenshot.png)

## Dokumentacja i zasoby

- Oficjalna dokumentacja: <https://help.bitwarden.com/>
- Oficjalna dokumentacja dla administratora: <https://github.com/dani-garcia/vaultwarden/wiki>
- Repozytorium z kodem źródłowym: <https://github.com/dani-garcia/vaultwarden>
- Sklep YunoHost: <https://apps.yunohost.org/app/vaultwarden>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/vaultwarden_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
lub
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
