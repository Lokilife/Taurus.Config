# Taurus Configuration

Setup for my server named Taurus.

## Notes

### Squid + Authentik setup
After Authentik start, you need to configure LDAP Outpost, LDAP Provider and LDAP Application.

After that, you'll need to create a user `ldap_binder` which will be used by Squid.
It's password should be stored in plain in `squid/etc/ldap_pass.txt`

After LDAP outpost setup in Authentik, run `docker network connect taurusconfig_default ak-outpost-ldap-outpost`

### FileBrowser setup

After successfull authorization with OIDC you might notice you can't upload or edit files. Which might be strange for you as an admin user.

First: `chmod -R 1000:1000 /var/lib/docker/volumes/taurusconfig_filebrowser_data/_data`

This will give the internal container user called `filebrowser` the right access to the folder.

Then, in settings check permissions panel and edit permissions for yourself - allow editing and uploading. Yeah, as an admin, you have to enable them for youself.
