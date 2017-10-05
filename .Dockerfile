FROM __BASE_IMAGE_NAME__:__BASE_IMAGE_TAG__
ENV ESLINT_CONFIGS_AND_PLUGINS="__ESLINT_CONFIGS_AND_PLUGINS__"
ENV PATHS_TO_REMOVE="\
  /root/.npm/* \
  /usr/lib/node_modules/npm/man/* \
  /usr/lib/node_modules/npm/doc/* \
  /usr/lib/node_modules/npm/html/* \
  /usr/lib/node_modules/npm/scripts/* \
"
RUN npm install -g eslint ${ESLINT_CONFIGS_AND_PLUGINS} \
    && rm -rf ${PATHS_TO_REMOVE}
COPY ./scripts/bin /usr/bin
ENTRYPOINT ["get-container-info"]