---
name: Version check issue for coffea-dask-gateway-eaf build
about: A CoffeaTeam and or EAF developer needs to approve the versions before triggering the environment change. Used for taking notes in our daily standups, with a new issue every week.
title: "Version check for coffea-dask-gateway-eaf build - {{ date | date('MMMM Do') }}"
labels:
  - "admin-approve"
---
### Please revisit the following package versions changed recently at ${{GITHUB_REPOSITORY}}
This will trigger builds in a lot of places, so make sure the following makes sense to you:
Environment variables file reads:

<-- ENV_FILE -->

```
RUN conda install --yes \
      -c conda-forge \
      conda-build \
      dask==${DASK_VERSION} \
      distributed==${DISTRIBUTED_VERSION} \
      dask-gateway==${DASK_GATEWAY_VERSION} \
      cloudpickle==${CLOUDPICKLE_VERSION} \
      tornado==${TORNADO_VERSION} \
      toolz==${TOOLZ_VERSION} \
      && conda clean --all -f -y \
      && conda build purge-all
```
