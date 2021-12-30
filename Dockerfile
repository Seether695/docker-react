#Specify base image
FROM node:17-alpine as builder

#Default directory
WORKDIR /app

#Install nedded dependencies
COPY package.json .
Run npm install
COPY . .

RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html