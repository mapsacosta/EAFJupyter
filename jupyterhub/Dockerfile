FROM jupyterhub/k8s-hub:1.1.2

USER root

RUN apt-get update && apt install -y krb5-multidev wget net-tools gnupg2 build-essential

RUN wget -q -O - \
     https://dist.eugridpma.info/distribution/igtf/current/GPG-KEY-EUGridPMA-RPM-3 \
     | apt-key add -

RUN echo "#### EGI Trust Anchor Distribution ####" >> /etc/apt/sources.list && \
    echo "deb http://repository.egi.eu/sw/production/cas/1/current egi-igtf core" >> /etc/apt/sources.list

RUN apt-get update && apt install -y ca-policy-egi-core 

RUN pip install jupyterhub-kerberosauthenticator && pip install jupyterhub-samlauthenticator

# The following makes my eyes bleed but it has to be done like this
# These are static values in general
# Not configurable
RUN cd /tmp && git clone --single-branch https://hepcloud-git.fnal.gov/csi-kubernetes/jupyter-web.git && \
    cp -r /tmp/jupyter-web/static/css/* /usr/local/share/jupyterhub/static/css/ && \
    cp -r /tmp/jupyter-web/static/less/* /usr/local/share/jupyterhub/static/less/ && \
    rm -rf /tmp/jupyter-web
