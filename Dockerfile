FROM node

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN npx yarn --pure-lockfile --prod

COPY . .

RUN npx yarn nx affected:build --parallel