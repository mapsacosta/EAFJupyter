FROM mapsacosta/eafjupyter:base-itb-notebook
LABEL maintainer="Maria A. <macosta@fnal.gov>"

USER root

COPY config/repos/* /etc/yum.repos.d/

# Install all OS dependencies for fully functional notebook server
RUN yum -y update && \
    yum -y install epel-release \
           krb5-workstation \
           sssd \
           sssd-common \
           sssd-client \
           sssd-tools \
           sssd-ldap \
           sssd-krb5-common \
           sssd-krb5 \
           yum-plugin-priorities \
           redhat-lsb-core \
           make cmake3 gcc-c++ gcc binutils \
           libX11-devel libXpm-devel libXft-devel libXext-devel openssl-devel nss_wrapper gettext && \
           yum clean all

#Install HTCondor 9 (stable)
RUN yum install -y https://research.cs.wisc.edu/htcondor/repo/9.0/el7/release/htcondor-release-9.0-2.el7.noarch.rpm && \
    yum install --disablerepo=osg -y condor && \
    yum clean all && rm -rf /var/cache/yum/*

RUN yum -y install osg-wn-client  \
                   xrootd-client \
                   xrootd-client-libs && \
    yum clean all && rm -rf /var/cache/yum/*

RUN yum --enablerepo=eos,xrootd -y install eos-client eos-xrootd

COPY config/lpc_aliases.sh /etc/profile.d/lpc_aliases.sh
COPY config/install_htcondor_wrappers.sh /tmp/install_htcondor_wrappers.sh
COPY config/init-container-notebook.sh /usr/local/bin/init-container-notebook.sh
COPY config/hooks/eosquota /usr/local/bin/eosquota
COPY config/FNAL.conf /etc/sssd/conf.d/FNAL.conf
COPY config/sssd.conf /etc/sssd/sssd.conf
COPY config/nsswitch.conf /etc/nsswitch.conf

RUN chmod +x /etc/profile.d/lpc_aliases.sh && \
    chmod +x /usr/local/bin/init-container-notebook.sh  && \
#    chmod 600 /etc/sssd/sssd.conf && \
#    chmod 600 /etc/sssd/conf.d/FNAL.conf && \
    chown -R root:root /etc/sssd
#    echo "/usr/sbin/sssd -d 4" >> /usr/local/bin/init.sh

RUN sh -c "/tmp/install_htcondor_wrappers.sh" && \
    rm -rf /tmp/*

VOLUME /uscmst1b_scratch/lpc1 /uscms_data/d1 /uscms_data/d2 /uscms_data/d3 /uscms /opt/condor /etc/sssd
COPY start.sh /usr/local/bin/start.sh
COPY json-passwd/usr/sbin/json-fetchgroupfile /usr/sbin/json-fetchgroupfile

# Switch back to jupyter to avoid accidental container runs as root
USER $NB_UID
