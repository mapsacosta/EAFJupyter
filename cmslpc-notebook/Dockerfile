FROM ssiregistry.fnal.gov:443/eaf/jupyter:base-notebook
LABEL maintainer="Maria A. <macosta@fnal.gov>"

USER root

COPY config/repos/* /etc/yum.repos.d/

# Install all OS dependencies for fully functional notebook server
RUN yum -y update && \
    yum -y install epel-release yum-plugin-priorities redhat-lsb-core && yum clean all

RUN yum -y install osg-wn-client  \
                   xrootd-client \
                   xrootd-client-libs && \
    yum clean all && rm -rf /var/cache/yum/*

RUN yum --enablerepo=eos,xrootd -y install eos-client eos-xrootd

#Install HTCondor 9 (stable)
RUN yum install -y https://research.cs.wisc.edu/htcondor/repo/8.8/el7/release/htcondor-release-8.8-1.el7.noarch.rpm && \
    yum install -y condor && \
    yum clean all && rm -rf /var/cache/yum/*

COPY config/config.d/* /etc/condor/config.d/
COPY config/motd /etc/motd
COPY config/lpc_aliases.sh /etc/profile.d/lpc_aliases.sh
COPY config/cmslpc-local-conf.py /usr/local/bin/cmslpc-local-conf.py 
COPY config/hooks/eosquota /usr/local/bin/eosquota

RUN chmod a+x /usr/local/bin/cmslpc-local-conf.py && chmod +x /etc/profile.d/lpc_aliases.sh

# Switch back to jupyter to avoid accidental container runs as root
USER $NB_UID
