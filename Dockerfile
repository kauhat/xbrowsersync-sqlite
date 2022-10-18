ARG VERSION="current"

#
FROM flyio/litestream-base as litestream

# Node app...
FROM node:$VERSION-alpine as builder

# Setup litestream...
COPY --from=litestream /litestream /litestream

# Our overrides.
COPY litestream /litestream

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install --production

COPY . .

#
CMD [ "/litestream/start.sh" , "node ./index.js"]
