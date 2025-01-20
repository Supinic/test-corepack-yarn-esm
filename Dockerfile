FROM node:latest

RUN corepack enable

RUN useradd -m test
USER test
WORKDIR /home/test

COPY --chown=test:test package.json ./
COPY --chown=test:test yarn.lock ./
COPY --chown=test:test .yarnrc.yml ./

RUN yarn

COPY --chown=test:test index.js ./

RUN yarn start
