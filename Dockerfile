#Extiende de la imagen de node 12.16.1 (Esta imagen se encuentra en DockerHub)
FROM node:12.16.1-alpine

#The last parameter is the destination directory of files
COPY ["package.json", "package-lock.json", "/usr/src/"]

#Workdir is the command for move into directories
WORKDIR /usr/src

#Install the dependencies
RUN npm install

#Copy the rest of the project
COPY [".", "/usr/src/"]

#Expose the port 3000 of our container
EXPOSE 3000

#This start the project and make the container live
CMD ["node", "index.js"]