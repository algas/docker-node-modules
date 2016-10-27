FROM algas/docker-node-modules:base-test-1

USER root
ENV ROOT_DIR /node
RUN mkdir $ROOT_DIR
COPY package.json $ROOT_DIR/

USER ubuntu
WORKDIR /node
RUN npm install

ENTRYPOINT ["tail", "-f", "/dev/null"]
