FROM --platform="linux/amd64" node:20-alpine3.18

RUN apk add g++ make python3
WORKDIR /app
COPY package*.json ./
RUN yarn
COPY . .
EXPOSE 1337
CMD yarn start