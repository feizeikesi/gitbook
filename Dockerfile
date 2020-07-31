FROM node:10

RUN npm install -g gitbook-cli; \
    npm install -g gitbook-summary; \
    npm install -g gitbook-plugin-plantuml-cloud-languages-ok; \
    gitbook fetch 3.2.3; \
    gitbook install
