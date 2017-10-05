FROM __BASE_IMAGE_NAME__:__BASE_IMAGE_TAG__
ENV PATHS_TO_REMOVE="
  /root/.npm/* \
  /usr/lib/node_modules/npm/man/* \
  /usr/lib/node_modules/npm/doc/* \
  /usr/lib/node_modules/npm/html/* \
  /usr/lib/node_modules/npm/scripts/* \
"
RUN npm install -g eslint \
      eslint-config-google \
      eslint-config-airbnb && \
    rm -rf ${PATHS_TO_REMOVE}