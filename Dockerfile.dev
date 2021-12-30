#Specify base image
FROM node:17-alpine

#Default directory
WORKDIR /app

#Install nedded dependencies
COPY package.json .
Run npm install
COPY . .

#Command to start and default
CMD ["npm", "run", "start"]