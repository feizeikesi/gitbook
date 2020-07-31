FROM node:10-buster-slim

RUN npm install -g gitbook-cli; \
    npm install -g gitbook-summary; \
    gitbook fetch 3.2.3; \
    gitbook install; \
    cd ~/.gitbook/versions/3.2.3/node_modules; \
    npm install gitbook-plugin-plantuml-cloud-languages-ok; 
