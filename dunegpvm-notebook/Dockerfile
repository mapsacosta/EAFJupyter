FROM mapsacosta/eafjupyter:base-notebook
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

#Install HTCondor (stable)
RUN yum install -y https://research.cs.wisc.edu/htcondor/repo/9.0/el7/release/htcondor-release-9.0-2.el7.noarch.rpm && \
    yum install -y --disablerepo=osg condor && \
    yum clean all && rm -rf /var/cache/yum/*

COPY config/config.d/* /etc/condor/config.d/
COPY config/motd /etc/motd
COPY config/dune_aliases.sh /etc/profile.d/dune_aliases.sh

RUN chmod +x /etc/profile.d/dune_aliases.sh

VOLUME ["/fnal/ups/etc/"]

ENV PATH=$PATH:/opt/jobsub_repo/client
ENV GRID_USER=$NB_USER
ENV GROUP=$NB_VO
ENV EXPERIMENT=$NB_VO

# Switch back to jupyter to avoid accidental container runs as root
USER $NB_UID
