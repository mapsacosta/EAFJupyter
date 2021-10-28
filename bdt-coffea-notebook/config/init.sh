echo ===== Creating base directories for NFS mounts
mkdir -p /uscmst1b_scratch/lpc1
mkdir -p /uscms_data/d1
mkdir -p /uscms_data/d2
mkdir -p /uscms_data/d3
mkdir -p /uscms


echo ===== Putting HTCondor wrappers in place
declare -a REPLACE_CONDOR_CMD=('condor_q' 'condor_rm' 'condor_qedit' 'condor_tail' 'condor_submit' 'condor_history')
declare -a REPLACE_CONDOR_RM_LINKS=('condor_vacate_job' 'condor_suspend' 'condor_continue')
declare -a DELETE_CONDOR_RM_LINKS=('condor_hold' 'condor_release')
declare -a NAME_FLAG_CHK_CMD=('condor_rm' 'condor_tail' 'condor_qedit' 'condor_hold' 'condor_release''condor_history')

# Some git configs before starting
git config --global user.email "gco_admin@fnal.gov"
git config --global user.name GCO_admin
git config --global pull.rebase false

# Better to start clean
rm -rf /tmp/gco_scripts
git clone https://hepcloud-git.fnal.gov/ECF-GCO-public/gco_scripts.git /tmp/gco_scripts 

### I'm aware that this can be done with a one liner but there's some weirdness about it and this seems to be the only thing that worked
(cd /tmp/gco_scripts
git fetch origin
git checkout -b fkhan_notebook_interactives
git branch --set-upstream-to=origin/fkhan_notebook_interactives fkhan_notebook_interactives
git pull --no-edit)

cp /tmp/gco_scripts/htcondor/cmslpc-local-conf.py /usr/local/bin/cmslpc-local-conf.py

echo Cleaning up /etc/condor/config.d
#rm -rf /etc/condor/config.d/*

echo Replacing various HTCondor commands with CSI/GCO wrappers
for i in "${REPLACE_CONDOR_CMD[@]}"
do
  if [ -e /usr/bin/${i} ]; then 
    mv /usr/bin/${i} /usr/bin/original_${i}
  else
    :
  fi
done 

for j in "${REPLACE_CONDOR_RM_LINKS[@]}"
do 
  if [ -e /usr/bin/${i} ]; then 
    :
  else
    ln -sf /usr/bin/original_condor_rm /usr/bin/${j}
  fi
done

for k in "${DELETE_CONDOR_RM_LINKS[@]}"
do
 if [ -h /usr/bin/${i} ]; then 
    rm -f /usr/bin/${k} && cp /usr/bin/original_condor_rm /usr/bin/original_${k}
  else
    :
  fi
done

for l in "${NAME_FLAG_CHK_CMD[@]}"
do
  cp /tmp/gco_scripts/htcondor/cmslpc-name-flag-check.py /usr/local/bin/${l} && chmod +755 /usr/local/bin/${l}
  # Creating symlinks for these binaries under /usr/libexec/condor. Needed to preserve original `condor_rm` functionality
  ln -sf /usr/bin/original_${l} /usr/libexec/condor/${l}
done

cp /tmp/gco_scripts/htcondor/cmslpc-condor-q.py /usr/local/bin/condor_q && chmod +755 /usr/local/bin/condor_q
cp /tmp/gco_scripts/htcondor/cmslpc-condor-submit.py /usr/local/bin/condor_submit && chmod +755 /usr/local/bin/condor_submit

rm -rf /tmp/gco_scripts

echo Setting scratch directory for condor wrappers
export FERMIHTC_LOCALCONF_OVERRIDE='/tmp'
echo Done

echo ===== Putting configuration files in place
echo Cleaning up /etc/condor/config.d
rm -rf /etc/condor/config.d/00*
mkdir -p /etc/condor/certs

rm -rf /tmp/htcondor-config-files
git clone https://hepcloud-git.fnal.gov/ECF-GCO-public/htcondor-config-files.git /tmp/htcondor-config-files
(cd /tmp/htcondor-config-files
git fetch origin
git checkout -b eaf_jupyter
git branch --set-upstream-to=origin/eaf_jupyter eaf_jupyter
git pull --no-edit)

cp /tmp/htcondor-config-files/service_configs/01_${NB_HTCPOOL}_jupyter_interactive /etc/condor/config.d/
cp /tmp/htcondor-config-files/mapfiles/${NB_HTCPOOL}.condor_mapfile /etc/condor/certs/condor_mapfile

rm -rf /tmp/htcondor-config-files

echo ===== Setitng X509 environment
# Need to set the X509 environment for users
USCMS_HOME=/uscms/home/${NB_USER}
export X509_USER_PROXY="${USCMS_HOME}/x509up_u${NB_UID}"
echo $X509_USER_PROXY
echo Done

