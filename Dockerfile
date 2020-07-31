FROM node:10-buster-slim

RUN npm install -g gitbook-cli; \
    npm install -g gitbook-summary; \
    gitbook fetch 3.2.3; \
    gitbook install; \
    cd ~/.gitbook/versions/3.2.3/node_modules; \
    npm install gitbook-plugin-plantuml-cloud-languages-ok; \
    sed -i 's/})]);/}));/g'  ~/.gitbook/versions/3.2.3/node_modules/gitbook-plugin-plantuml-cloud-languages-ok/index.js; \
    sed -i 's/Promise\.all(\[/Promise\.all\(/g'  ~/.gitbook/versions/3.2.3/node_modules/gitbook-plugin-plantuml-cloud-languages-ok/index.js
