L'interface d'administration est accessible à l'adresse <https://__DOMAIN____PATH__admin> avec le mot de passe choisi lors de l'installation.  
Le token admin de connexion est le mot de passe choisi lors de l'installation.

### Utilisation avec Dex
Pour s'authentifier sur Vaultwarden avec Dex, il est nécessaire de désactiver une protection sur Dex (Voir [ici](https://doc.yunohost.org/fr/dev/packaging/advanced/sso_ldap_integration/#app-which-reuse-the-auth-basic-header-to-authenticate-to-an-internal-service).  
Si vous êtes d'accord avec cela, lancez cette commande en ligne de commande :
```
sudo yunohost app setting dex protect_against_basic_auth_spoofing -v false
sudo yunohost app ssowatconf
sudo systemctl reload nginx.service
``` 
