FROM node:18
WORKDIR /quests
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "src/000.js" ]
