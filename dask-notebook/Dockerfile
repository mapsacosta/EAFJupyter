# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM mapsacosta/eafjupyter:cmslpc-notebook 

LABEL maintainer="Maria A. <macosta@fnal.gov>"

ENV PYTHONPATH /usr/local/lib:$PYTHONPATH
ENV CONDOR_CONFIG /etc/condor/condor_config

# XRootD + CA + VOMS + Coffea
RUN mamba install --yes --freeze-installed \
      mamba-build \
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
      dask==2.30.0 \
      distributed==2.30.1 \
      dask-jobqueue \
      dask-gateway==0.9.0 \
      nomkl \
      scipy==1.5.3 \
      tini==0.18.0 \
      jupyter-server-proxy \
      jupyter_nbextensions_configurator \
      jupyterlab-git \
      dask-labextension \
      && mamba clean --all -f -y \
      && mamba build purge-all

USER root
RUN fix-permissions $CONDA_DIR  && \
    fix-permissions /home/$NB_USER

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
    jupyter serverextension enable jupyterlab_git && \
#    jupyter labextension install @jupyterlab/github && \
    jupyter labextension install dask-labextension && \
    jupyter serverextension enable dask_labextension 

COPY config/init.sh /tmp/init.sh

RUN cat /tmp/init.sh >> /usr/local/bin/init.sh \
    && cat /usr/local/bin/init.sh

USER $NB_USER
RUN python -m pip install -q git+https://github.com/CoffeaTeam/lpcjobqueue.git@v0.2.3
