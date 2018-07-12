FROM node:carbon
ADD package.json package-lock.json app/
WORKDIR /app
RUN npm install
ADD . /app
EXPOSE 3000
CMD ["npm", "start"]
