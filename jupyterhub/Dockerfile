FROM jupyterhub/k8s-hub:1.0.0

USER root

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash

RUN apt-get update && apt install -y krb5-multidev wget nodejs net-tools gnupg2 build-essential

RUN npm install -g configurable-http-proxy

RUN wget -q -O - \
     https://dist.eugridpma.info/distribution/igtf/current/GPG-KEY-EUGridPMA-RPM-3 \
     | apt-key add -

RUN echo "#### EGI Trust Anchor Distribution ####" >> /etc/apt/sources.list && \
    echo "deb http://repository.egi.eu/sw/production/cas/1/current egi-igtf core" >> /etc/apt/sources.list

RUN apt-get update && apt install -y ca-policy-egi-core 

RUN pip install jupyterhub-kerberosauthenticator && pip install jupyterhub-samlauthenticator
