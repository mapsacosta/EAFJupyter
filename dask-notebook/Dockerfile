# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM mapsacosta/eafjupyter:cmslpc-notebook 

LABEL maintainer="Maria A. <macosta@fnal.gov>"

ENV PYTHONPATH /usr/local/lib:$PYTHONPATH
ENV CONDOR_CONFIG /etc/condor/condor_config
#RUN conda create --name MLtutorial2 python=3.7.0 && \
#    conda activate MLtutorial2 && \
 #   fix-permissions $CONDA_DIR && \
  #  fix-permissions /home/$NB_USER

# XRootD + CA + VOMS + Coffea
RUN conda install --yes \
      -c conda-forge \
      conda-build \
      python==3.8.* \
      dask_labextension \
      ca-policy-lcg \
      xrootd==5.1.1 \
      coffea==0.7.2 \
      lz4 \
      python-xxhash \
      zstandard \
      python-blosc \
      cytoolz \
      bokeh==2.2.3 \
      dask==2021.4.1 \
      distributed==2021.4.1 \
      dask-jobqueue \
      dask-gateway==0.9.0 \
      nomkl \
      scipy==1.5.3 \
      tini==0.18.0 \
      jupyter-server-proxy \
      jupyter_nbextensions_configurator \
      jupyterlab-git \
      dask-labextension \
      && conda clean --all -f -y \
      && conda build purge-all

USER root
RUN fix-permissions $CONDA_DIR  && \
    fix-permissions /home/$NB_USER

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
    jupyter serverextension enable jupyterlab_git && \
#    jupyter labextension install @jupyterlab/github && \
    jupyter labextension install dask-labextension && \
    jupyter serverextension enable dask_labextension 


COPY config/bootstrap.sh /tmp/bootstrap.sh

RUN cat /tmp/bootstrap.sh >> /usr/local/bin/bootstrap.sh && \
    cat /usr/local/bin/bootstrap.sh

USER $NB_USER
RUN python -m pip install -q git+https://github.com/CoffeaTeam/lpcjobqueue.git@v0.2.3 
