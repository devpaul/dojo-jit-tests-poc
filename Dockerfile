FROM node:8

COPY . /app
WORKDIR /app
RUN npm i -g grunt-cli
RUN npm install
RUN npx dojo build
EXPOSE 8888
ENTRYPOINT [ "npm", "run", "serve" ]
