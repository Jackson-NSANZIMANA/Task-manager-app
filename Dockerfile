
FROM node:18

WORKDIR /Task-manager-app

COPY package*.json ./

RUN npm install

COPY . .

ENV MONGO_URI=mongodb://mongo:27017/taskmanager
ENV PORT=5000
#Expose port
EXPOSE 5000
#Start the app
CMD [ "node","app.js" ]
