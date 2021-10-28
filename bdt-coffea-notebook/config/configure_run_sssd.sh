#!/bin/bash
set -e

# puot config files in place
# Kerberos config
wget https://authentication.fnal.gov/krb5conf/SL7/krb5.conf --output-document=/etc/krb5.conf

cat >/etc/sssd/conf.d/FNAL.conf <<EOL
    [domain/FNAL]
    id_provider = files
    dns_discovery_domain = fnal.gov
    auth_provider = krb5
    krb5_realm = FNAL.GOV
    krb5_ccachedir = /run/user/%U/krb5_ccache
    krb5_renewable_lifetime = 7d
    krb5_lifetime = 1d
    krb5_renew_interval = 3h
    enumerate = true
    pwfield = *
    passwd_files = /etc/sssd/passwd
    group_files = /etc/sssd/group
EOL

cat >/etc/sssd/sssd.conf <<EOL
[sssd]
    services = nss, pam
    domains = FNAL
EOL

# fix permissions
chmod 600 /etc/sssd/sssd.conf

# create db directory if not exists
mkdir -p /var/lib/sss/db
mkdir -p /var/lib/sss/pipes/private
mkdir -p /var/lib/sss/mc

echo ===== Pulling /etc/passwd from FERRY
exec /srv/json-passwd/usr/sbin/json-fetchgroupdb
exec /srv/json-passwd/usr/sbin/json-fetchpasswddbe
#exec "$@"
