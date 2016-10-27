FROM algas/docker-node-modules:base-test-1

USER ubuntu
ENV NODE_DIR /home/ubuntu/node
RUN mkdir -p $NODE_DIR
COPY package.json $ROOT_DIR/

WORKDIR $NODE_DIR
RUN npm install

ENTRYPOINT ["tail", "-f", "/dev/null"]
