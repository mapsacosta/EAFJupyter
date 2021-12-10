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

FROM mapsacosta/eafjupyter:cmslpc-notebook 

LABEL maintainer="Maria A. <macosta@fnal.gov>"

ENV PYTHONPATH /usr/local/lib:$PYTHONPATH

USER root
RUN yum -y update \
 && yum -y install \
    ffmpeg \
    dvipng \
    cm-super

# Install Python 3 packages
RUN conda install --quiet --yes \
    'pytorch'\
    'torchvision' \
    'cudatoolkit=11.1' -c pytorch -c nvidia

RUN conda install --quiet --yes \
    'bokeh' \
    'tqdm' \
    'cython' \
    'h5py' \
    'ipympl'\
    'ipywidgets' \
    'matplotlib-base' \
    'numba' \
    'numexpr' \
    'numpy' \
    'pandas' \
    'pytz' \
    'scikit-image' \
    'scikit-learn' \
    'scipy' \
    'sympy' && \
    conda clean --all -f -y

RUN fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# Import matplotlib the first time to build the font cache.
ENV XDG_CACHE_HOME="/home/${NB_USER}/.cache/"

RUN MPLBACKEND=Agg python -c "import matplotlib.pyplot" && \
    fix-permissions "/home/${NB_USER}"

USER ${NB_UID}
