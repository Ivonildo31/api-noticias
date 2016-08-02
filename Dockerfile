FROM mhart/alpine-node:6.2.1

# add project to build
COPY src /root/api-noticias/src
COPY package.json /root/api-noticias/package.json
COPY newrelic.js /root/api-noticias/newrelic.js
WORKDIR /root/api-noticias
RUN npm install

ENV PORT 4242

EXPOSE 4242

CMD ["node", "src/bin/www"]
