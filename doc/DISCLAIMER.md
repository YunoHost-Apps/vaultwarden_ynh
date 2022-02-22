### Install

This package compile Vaultwarden from sources, that can take a long time on a small computer :

* When installing on a Raspberry Pi 3, this can take more than 1 hour.
* When installing from the webadmin, you can encounter the "504 Gateway Timeout": this is fine, just let it finish in the background.

### Migrate from Bitwarden

This package handle the migration from Bitwarden to Vaultwarden.
For that, you will have to upgrade your Bitwarden application with this repository.
This can only be done from the command-line interface - e.g. through SSH.
Once you're connected, you simply have to execute the following:

```bash
sudo yunohost app upgrade bitwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh --debug
```

The `--debug` option will let you see the full output. If you encounter any issue, please paste it.
