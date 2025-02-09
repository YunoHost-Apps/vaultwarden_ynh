<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Vaultwarden

[![集成程度](https://apps.yunohost.org/badge/integration/vaultwarden)](https://ci-apps.yunohost.org/ci/apps/vaultwarden/)
![工作状态](https://apps.yunohost.org/badge/state/vaultwarden)
![维护状态](https://apps.yunohost.org/badge/maintained/vaultwarden)

[![使用 YunoHost 安装 Vaultwarden](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=vaultwarden)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Vaultwarden。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Vaultwarden is a password manager, allowing generation and storage of passwords in a secure way. These are protected by a single password called the "master password".

Clients exist for [Linux, macOS and Windows](https://bitwarden.com/#download), [Android](https://play.google.com/store/apps/details?id=com.x8bit.bitwarden), [iOS](https://itunes.apple.com/app/bitwarden-free-password-manager/id1137397744?mt=8), and as a web browser plug-ins. It is also possible to manage passwords from the web interface.


**分发版本：** 1.33.2~ynh1

**演示：** <https://vault.bitwarden.com/#/register>

## 截图

![Vaultwarden 的截图](./doc/screenshots/screenshot.png)

## 文档与资源

- 官方用户文档： <https://help.bitwarden.com/>
- 官方管理文档： <https://github.com/dani-garcia/vaultwarden/wiki>
- 上游应用代码库： <https://github.com/dani-garcia/vaultwarden>
- YunoHost 商店： <https://apps.yunohost.org/app/vaultwarden>
- 报告 bug： <https://github.com/YunoHost-Apps/vaultwarden_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
或
sudo yunohost app upgrade vaultwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
