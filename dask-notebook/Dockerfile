# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM ssiregistry.fnal.gov:443/ecf-gco/jupyter:minimal-notebook

LABEL maintainer="Maria A. <macosta@fnal.gov>"

ENV PYTHONPATH /usr/local/lib:$PYTHONPATH
#RUN conda create --name MLtutorial2 python=3.7.0 && \
#    conda activate MLtutorial2 && \
 #   fix-permissions $CONDA_DIR && \
  #  fix-permissions /home/$NB_USER

# XRootD + CA + VOMS + Coffea
RUN conda install --yes --freeze-installed \
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
      nomkl \
      scipy==1.5.3 \
      tini==0.18.0 \
      jupyter-server-proxy \
      && conda clean --all -f -y \
      && conda build purge-all

USER root
RUN fix-permissions $CONDA_DIR  && \
    fix-permissions /home/$NB_USER

USER $NB_USER
