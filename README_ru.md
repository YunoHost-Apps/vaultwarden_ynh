<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Vaultwarden для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/vaultwarden)](https://ci-apps.yunohost.org/ci/apps/vaultwarden/)
![Состояние работы](https://apps.yunohost.org/badge/state/vaultwarden)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/vaultwarden)

[![Установите Vaultwarden с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Vaultwarden быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Vaultwarden is a password manager, allowing generation and storage of passwords in a secure way. These are protected by a single password called the "master password".

Clients exist for [Linux, macOS and Windows](https://bitwarden.com/#download), [Android](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden), [iOS](https://itunes.apple.com/app/bitwarden-free-password-manager/id1137397744?mt=8), and as a web browser plug-ins. It is also possible to manage passwords from the web interface.


**Поставляемая версия:** 1.32.5~ynh1

**Демо-версия:** <https://vault.bitwarden.com/#/register>

## Снимки экрана

![Снимок экрана Vaultwarden](./doc/screenshots/screenshot1.png)

## Документация и ресурсы

- Официальная документация пользователя: <https://help.bitwarden.com/>
- Официальная документация администратора: <https://github.com/dani-garcia/vaultwarden/wiki>
- Репозиторий кода главной ветки приложения: <https://github.com/dani-garcia/vaultwarden>
- Магазин YunoHost: <https://apps.yunohost.org/app/vaultwarden>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/vaultwarden_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
или
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
