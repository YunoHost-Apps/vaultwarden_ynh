## Generating and using a secure Argon2 PHC string as the Admin token

Immediately after installing Vaultwarden, [the post-install instructions](./POST_INSTALL.md) provide a token to access Vaultwarden’s `/admin` page.

Once it is accessed, a banner shows a disclaimer with the following warning:

> You are using a plain text \`ADMIN\_TOKEN\` which is insecure.
> Please generate a secure Argon2 PHC string by using \`vaultwarden hash\` or \`argon2\`.
> See: [Enabling admin page - Secure the \`ADMIN\_TOKEN\`](https://github.com/dani-garcia/vaultwarden/wiki/Enabling-admin-page#secure-the-admin_token)

The linked instructions provide a detailed explanation about what it is and why it’s important. Here’s how to do it in YunoHost:

1. Access your YunoHost server via SSH.
1. Enter Vaultwarden’s app shell with `sudo yunohost app shell vaultwarden`.
1. Instead of just running `vaultwarden`, as the upstream documentation indicates, you can run the command by writing its whole path: `/var/www/vaultwarden/live/vaultwarden`. Therefore, e.g. to generate an Argon2id PHC string, run `/var/www/vaultwarden/live/vaultwarden hash`.
1. Securely store both the password you entered and the generated Argon2 PHC string.
1. Visit <https://__DOMAIN____PATH__/admin> using the original plain text Admin token provided after the installation, and paste the generated Argon2 PHC string in “General settings” > “Admin token/Argon2 PHC”.
1. Change the value of `admin_token` in `__DATA_DIR__/settings.yml` with the generated Argon2 PHC string. **Note**: enclose the Argon2 PHC string in single or double quotes!
1. Restart Vaultwarden, either from the YunoHost Admin interface, or by running `sudo yunohost service restart vaultwarden`.
1. Visit <https://__DOMAIN____PATH__/admin>, and access it by entering **the password you chose when you generated the Argon2 PHC string**.
