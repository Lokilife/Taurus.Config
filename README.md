# Taurus Configuration

Setup for my server named Taurus.

## Notes

After Authentik start, you need to configure LDAP Outpost, LDAP Provider and LDAP Application.

After that, you'll need to create a user `ldap_binder` which will be used by Squid.
It's password should be stored in plain in `squid/etc/ldap_pass.txt`

After LDAP outpost setup in Authentik, run `docker network connect taurusconfig_default ak-outpost-ldap-outpost`
