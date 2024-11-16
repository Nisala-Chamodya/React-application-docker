#Use the base image from docker Hub
FROM node:20-alpine

# set the working directory
WORKDIR /app

#copy the package.json and package-lock.json file
COPY package*.json ./

#Install the dependencies
RUN npm install

# copy the rest of the applicaion
COPY . .

#Exopse the port of your app will run on
EXPOSE 3000

#start the application
CMD [ "npm","start" ]