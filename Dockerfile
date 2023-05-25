FROM --platform=linux/amd64 node:current-alpine3.17
EXPOSE 3000
WORKDIR /app
COPY . .
RUN yarn install && yarn cache clean
CMD ["node", "/app/src/index.js"]