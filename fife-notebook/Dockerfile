FROM mapsacosta/eafjupyter:base-notebook
LABEL maintainer="Maria A. <macosta@fnal.gov>"

USER root

COPY config/repos/* /etc/yum.repos.d/

# Install all OS dependencies for fully functional notebook server
RUN yum -y update && \
    yum -y install epel-release \
           yum-plugin-priorities \
           redhat-lsb-core \
           make cmake3 gcc-c++ gcc binutils \
           libX11-devel libXpm-devel libXft-devel libXext-devel openssl-devel && \
           yum clean all

#Install HTCondor 9 (stable)
RUN yum install -y https://research.cs.wisc.edu/htcondor/repo/9.0/el7/release/htcondor-release-9.0-2.el7.noarch.rpm && \
    yum install --disablerepo=osg -y condor && \
    yum clean all && rm -rf /var/cache/yum/*

RUN yum -y install osg-wn-client  \
                   xrootd-client \
                   xrootd-client-libs && \
    yum clean all && rm -rf /var/cache/yum/*

COPY config/fife_aliases.sh /etc/profile.d/fife_aliases.sh
COPY config/init.sh /tmp/init.sh

RUN cat /tmp/init.sh >> /usr/local/bin/init.sh && \
    chmod +x /etc/profile.d/fife_aliases.sh

# Switch back to jupyter to avoid accidental container runs as root
USER $NB_UID
