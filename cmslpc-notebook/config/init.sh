echo Setting scratch directory for condor wrappers
export FERMIHTC_LOCALCONF_OVERRIDE='/tmp'
echo Done

echo ===== Putting HTCondor configuration files in place
export CONDOR_DEST=/opt/condor
export CONDOR_ORIG=/etc/condor

echo Cleaning up /etc/condor/config.d
rm -rf ${CONDOR_ORIG}/config.d/00*
mkdir -p ${CONDOR_DEST}/config.d
mkdir -p ${CONDOR_DEST}/tokens.d
mkdir -p ${CONDOR_DEST}/certs
mkdir -p ${CONDOR_DEST}/password.d
cp -r ${CONDOR_ORIG}/* ${CONDOR_DEST}/
ls -ltrha ${CONDOR_DEST}
echo "+++++++++++=========="
chmod a+r /opt/condor
rm -rf /tmp/htcondor-config-files

git clone https://hepcloud-git.fnal.gov/ECF-GCO-public/htcondor-config-files.git /tmp/htcondor-config-files
(cd /tmp/htcondor-config-files
git fetch origin
git checkout -b eaf_jupyter
git branch --set-upstream-to=origin/eaf_jupyter eaf_jupyter
git pull --no-edit)

cp /tmp/htcondor-config-files/service_configs/01_${NB_HTCPOOL}_jupyter_interactive ${CONDOR_DEST}/config.d/
cp /tmp/htcondor-config-files/mapfiles/${NB_HTCPOOL}.condor_mapfile ${CONDOR_DEST}/certs/condor_mapfile

rm -rf /tmp/htcondor-config-files

echo ===== Generating an HTCondor IDTOKEN for remote user submit to CMSLPC

cat >${CONDOR_ORIG}/config.d/97-token-issuer.conf <<EOF
COLLECTOR_HOST = htccolldev01.fnal.gov:9618, htccolldev02.fnal.gov:9618
SEC_DEFAULT_AUTHENTICATION_METHODS = GSI,IDTOKENS
SEC_CLIENT_AUTHENTICATION_METHODS = PASSWORD
MASTER_NAME = condor_token_issuer
UID_DOMAIN = fnal.gov
EOF

export CONDOR_CONFIG=${CONDOR_ORIG}/condor_config

condor_store_cred add -c -p $POOL_SIGNING_KEY -d
condor_token_create -identity ${NB_USER}@jupyter.fnal.gov -authz READ -lifetime 604800 -token JUPYTER_idtoken

echo ===== Setitng X509 environment
# Need to set the X509 environment for users
USCMS_HOME=/uscms/home/${NB_USER}
export X509_USER_PROXY="${USCMS_HOME}/x509up_u${NB_UID}"
echo $X509_USER_PROXY
echo Done

echo ===== Pulling /etc/passwd from FERRY
# put config files in place
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
exec /srv/json-passwd/usr/sbin/json-fetchpaswddb

exec '/usr/sbin/sssd","-i","-d","4"'
