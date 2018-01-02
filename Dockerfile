# https://hub.docker.com/_/node/
FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

RUN git clone -b master https://github.com/franjcruz/dockerizing_node.git . && \
    npm install

EXPOSE 3000

CMD [ "npm", "start" ]