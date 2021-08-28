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
# Not configurable
RUN grep -rl 'f37524' /usr/local/share/jupyterhub/ | xargs sed -i 's/f37524/204f92/g'
