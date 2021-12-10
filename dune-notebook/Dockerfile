# Copyright 2021 Maria P. Acosta F. macosta-at-fnal-dot-gov
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
COPY config/dune_aliases.sh /etc/profile.d/dune_aliases.sh
COPY config/init.sh /tmp/init.sh

RUN cat /tmp/init.sh >> /usr/local/bin/init.sh && \
    chmod +x /etc/profile.d/dune_aliases.sh && cat /usr/local/bin/init.sh

ENV GRID_USER=$NB_USER
ENV GROUP=$NB_VO
ENV EXPERIMENT=$NB_VO

# Switch back to jupyter to avoid accidental container runs as root
USER $NB_UID
