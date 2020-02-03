FROM base:latest AS builder

FROM node:alpine

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/node_modules ./node_modules
COPY --from=builder /usr/src/app/dist/apps/api ./

CMD ["node", "main.js"]