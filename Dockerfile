FROM algas/docker-node-modules:base-test-1

USER ubuntu
ENV NODE_DIR /home/ubuntu/node
ENV LOG_DIR /home/ubuntu/log
RUN mkdir -p $NODE_DIR $LOG_DIR
COPY package.json $NODE_DIR/

WORKDIR $NODE_DIR
RUN \
  npm install && \
  npm ls > $LOG_DIR/installed.log

ENTRYPOINT ["tail", "-f", "/dev/null"]
