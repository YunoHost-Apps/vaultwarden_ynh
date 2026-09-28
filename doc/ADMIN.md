The administration interface can be accessed at <https://__DOMAIN____PATH__admin> with the password chosen during installation.  
The admin token requested is the password chosen during installation.

### Use with DEX
If you want to use Vaultwarden with Dex, you need to disable one of Dex's security features. See [here](https://doc.yunohost.org/fr/dev/packaging/advanced/sso_ldap_integration/#app-which-reuse-the-auth-basic-header-to-authenticate-to-an-internal-service).  
If you agree with this, run (via CLI) :
```
sudo yunohost app setting dex protect_against_basic_auth_spoofing -v false
sudo yunohost app ssowatconf
sudo systemctl reload nginx.service
``` 
