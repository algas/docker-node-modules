FROM algas/docker-node-modules:base-test-1

USER root
ENV ROOT_DIR /node
RUN \
  mkdir -p $ROOT_DIR &&
  chown -R ubuntu:ubuntu $ROOT_DIR
COPY package.json $ROOT_DIR/

USER ubuntu
WORKDIR $ROOT_DIR
RUN npm install

ENTRYPOINT ["tail", "-f", "/dev/null"]
