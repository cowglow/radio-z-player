FROM node:18 as BUILDER

WORKDIR /app

COPY . /app

#RUN yarn install --mutex file:/usr/local/share/.cache/yarn/.yarn-mutex

FROM node:18 as DEVELOPMENT

RUN mkdir /app

COPY --from=BUILDER /app /app
#COPY --from=BUILDER /app/package.json /app/yarn.lock /app/

RUN cd /app && yarn install && yarn cache clean

WORKDIR /app
