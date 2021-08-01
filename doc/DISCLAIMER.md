* Any known limitations, constrains or stuff not working, such as (but not limited to):
    * single-sign on and LDAP integration are not-working
    * installation took a lot of time

* Other infos that people should be aware of, such as:
    * At the end of the installation, the admin user will receive a mail with the admin_token used to access https://your.domain.tld/vaultwarden/admin.
    * You can configure this app using the admin panel at https://vaultwarden.domain.tld/admin.

## Migrate from Bitwarden

This package handle the migration from Bitwarden to Vaultwarden.
For that, you will have to upgrade your Bitwarden application with this repository.
This can only be done from the command-line interface - e.g. through SSH.
Once you're connected, you simply have to execute the following:

```bash
sudo yunohost app upgrade bitwarden -u https://github.com/YunoHost-Apps/vaultwarden_ynh --debug
```

The `--debug` option will let you see the full output. If you encounter any issue, please paste it.
