<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Vaultwarden untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/vaultwarden)](https://ci-apps.yunohost.org/ci/apps/vaultwarden/)
![Status kerja](https://apps.yunohost.org/badge/state/vaultwarden)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/vaultwarden)

[![Pasang Vaultwarden dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Vaultwarden secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Vaultwarden is a password manager, allowing generation and storage of passwords in a secure way. These are protected by a single password called the "master password".

Clients exist for [Linux, macOS and Windows](https://bitwarden.com/#download), [Android](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden), [iOS](https://itunes.apple.com/app/bitwarden-free-password-manager/id1137397744?mt=8), and as a web browser plug-ins. It is also possible to manage passwords from the web interface.


**Versi terkirim:** 1.33.0~ynh1

**Demo:** <https://vault.bitwarden.com/#/register>

## Tangkapan Layar

![Tangkapan Layar pada Vaultwarden](./doc/screenshots/screenshot1.png)

## Dokumentasi dan sumber daya

- Dokumentasi pengguna resmi: <https://help.bitwarden.com/>
- Dokumentasi admin resmi: <https://github.com/dani-garcia/vaultwarden/wiki>
- Depot kode aplikasi hulu: <https://github.com/dani-garcia/vaultwarden>
- Gudang YunoHost: <https://apps.yunohost.org/app/vaultwarden>
- Laporkan bug: <https://github.com/YunoHost-Apps/vaultwarden_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
atau
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
