ARG REGISTRY=foo
ARG PROJECT=foo
ARG APP_NAME=foo
ARG APP_VERSION=foo
ARG IMG_VERSION=foo
FROM ${REGISTRY}/$PROJECT/$APP_NAME:$APP_VERSION-$IMG_VERSION
ENV PORT=3306
ENV MORE_ENV='foobar'
LABEL author="Your Name"
LABEL name="$APP_NAME"
LABEL author.mail="author@foo.com"
COPY bin/entrypoint.sh /opt/"$APP_NAME"/bin/entrypoint.sh
RUN apt-get update \
    && apt-get install bar-package --no-install-recommends -y\
    && apt-get -y autoclean \
    && apt-get -y autoremove 
EXPOSE ${PORT}
USER "$APP_NAME"
ENTRYPOINT ["/bin/bash", "-c", "/path/entrypoint.sh"]
