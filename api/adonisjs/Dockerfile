ARG NODE_IMAGE=node:16-alpine

FROM $NODE_IMAGE AS base
RUN apk --no-cache add dumb-init
RUN mkdir -p /home/node/app && chown node:node /home/node/app
WORKDIR /home/node/app
USER node
RUN mkdir tmp

FROM base AS dependencies
COPY --chown=node:node ./package*.json ./
RUN if [ -e yarn.lock ]; then yarn install --frozen-lockfile; elif [ -e package-lock.json ]; then npm ci; else npm i; fi
COPY --chown=node:node . .

FROM dependencies AS build
RUN node ace build --production

FROM base AS production
ENV NODE_ENV=production
ENV PORT=$PORT
ENV HOST=0.0.0.0
COPY --chown=node:node ./package*.json ./
RUN if [ -e yarn.lock ]; then yarn install --frozen-lockfile; elif [ -e package-lock.json ]; then npm ci --production; else npm i; fi
COPY --chown=node:node --from=build /home/node/app/build .
EXPOSE $PORT
CMD [ "dumb-init", "node", "server.js" ]

FROM base AS test
ENV NODE_ENV=testing
COPY --chown=node:node ./package*.json ./
RUN if [ -e yarn.lock ]; then yarn install --frozen-lockfile; elif [ -e package-lock.json ]; then npm ci; else npm i; fi
COPY --chown=node:node . .
CMD [ "dumb-init", "node", "-r", "@adonisjs/assembler/build/register", "japaFile.ts" ]
