FROM docker:dind

RUN set -ex \
    && apk update \
    && apk add git python py-pip \
    && pip install --upgrade --user awscli \
    && ln -s ~/.local/bin/aws /usr/bin/aws \
    && apk -v --purge del py-pip \
    && rm /var/cache/apk/*
