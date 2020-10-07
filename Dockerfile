FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

# copy all deps and files to working dir
# we don't want node_modules to be overriden in image
COPY . . 

ENV PORT=8080

EXPOSE 8080

# exec form - does not start a shell session
CMD ["npm", "start"]