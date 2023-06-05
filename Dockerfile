FROM node:16-alpine
WORKDIR /app
COPY ./source\ code/server\ code\ v3/package.json ./
RUN npm install
COPY ./source\ code/server\ code\ v3 .
RUN npm prune --production
ENV PORT 80
EXPOSE 80
CMD ["node", "server.js"]
