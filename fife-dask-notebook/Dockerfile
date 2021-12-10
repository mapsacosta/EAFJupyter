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

FROM mapsacosta/eafjupyter:fife-notebook

LABEL maintainer="Maria A. <macosta@fnal.gov>"

ENV PYTHONPATH /usr/local/lib:$PYTHONPATH
ENV CONDOR_CONFIG /etc/condor/condor_config

# XRootD + CA + VOMS + Coffea
RUN conda install --yes --freeze-installed \
      -c conda-forge \
      conda-build \
      dask_labextension \
      python==3.8.3 \
      ca-policy-lcg \
      xrootd==5.2.0 \
      "uproot>=4.0.8" \
      coffea==0.7.5 \
      vector \
      lz4 python-xxhash zstandard \
      python-blosc \
      cytoolz \
      bokeh==2.2.3 \
      # Relevant for dask-gateway compatibility
      dask==2.30.0 \
      distributed==2.30.1 \
      dask-gateway==0.9.0 \
      cloudpickle==1.6.0 \
      tornado==6.1 \
      toolz==0.11.1 \
      numpy==1.19.2 \
      dask-jobqueue \
      nomkl \
      scipy==1.5.3 \
      jupyter-server-proxy \
      jupyter_nbextensions_configurator \
      jupyterlab-git \
      && conda clean --all -f -y \
      && conda build purge-all

USER root
RUN fix-permissions $CONDA_DIR  && \
    fix-permissions /home/$NB_USER

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
    jupyter serverextension enable jupyterlab_git && \
    jupyter labextension install dask-labextension && \
    jupyter serverextension enable dask_labextension 

COPY config/init.sh /tmp/init.sh

RUN cat /tmp/init.sh >> /usr/local/bin/init.sh \
    && cat /usr/local/bin/init.sh

USER $NB_USER
