FROM algas/docker-node-modules:base-test-1

RUN mkdir /node
COPY package.json /node/
WORKDIR /node
RUN npm install
