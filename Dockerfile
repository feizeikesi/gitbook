FROM node:10

RUN npm install gitbook-cli -g; \
    npm install -g gitbook-summary; \
    gitbook fetch 3.2.3; \
    gitbook install
