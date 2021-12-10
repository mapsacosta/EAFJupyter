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

RUN conda install --quiet --yes 'keras' 'tensorflow' && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

RUN pip install --upgrade scipy==1.4.1 numpy && \
    pip install 'jupyter' \
                'uproot' \
                'h5py' \
                'pandas' \
                'matplotlib' \
                'sklearn' \
                'scikit-optimize' \
                'torch' && \
    fix-permissions $CONDA_DIR && fix-permissions /home/$NB_USER

RUN cd /home/$NB_USER && \
    git clone https://github.com/FNAL-AI-Project/machine-learning-tutorial.git && \
    wget https://www.dropbox.com/s/q4qtgms6a3zw1lb/MLTutorialData.tar.gz && \
    fix-permissions $CONDA_DIR && fix-permissions /home/$NB_USER

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
