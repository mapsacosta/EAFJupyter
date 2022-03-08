#!/bin/bash 

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

NB_HTCPOOL="${NB_HTCPOOL:-dfc}"

git clone https://hepcloud-git.fnal.gov/ECF-GCO-public/htcondor-config-files.git /tmp/htcondor-config-files
(cd /tmp/htcondor-config-files
git fetch origin
git checkout -b eaf_jupyter
git branch --set-upstream-to=origin/eaf_jupyter eaf_jupyter
git pull --no-edit)

cp /tmp/htcondor-config-files/service_configs/01_${NB_HTCPOOL}_jupyter_interactive ${CONDOR_DEST}/config.d/
cp /tmp/htcondor-config-files/mapfiles/${NB_HTCPOOL}.condor_mapfile ${CONDOR_DEST}/certs/condor_mapfile

rm -rf /tmp/htcondor-config-files

echo ===== Copying jupyter and conda directories into user home
cp -R /home/jupyter/.conda /home/${JPY_USER}/
cp -R /home/jupyter/.jupyter /home/${JPY_USER}/
fix-permissions /home/${JPY_USER}

echo ===== Generating an HTCondor IDTOKEN for remote user submit to ${NB_HTCPOOL}

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
