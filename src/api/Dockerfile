FROM node:12.18.0-alpine3.12 as base

RUN npm set progress=false && npm config set depth 0
WORKDIR /src
COPY ./src/api .
RUN npm install
EXPOSE 3000

CMD ["npm", "start"]
