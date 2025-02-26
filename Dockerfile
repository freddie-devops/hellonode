# use a node base image
FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
HEALTHCHECK --interval=15s \
            --timeout=10s \
            CMD curl -f http://127.0.0.1:8080 | exit 1
            
EXPOSE 8080
CMD [ "npm", "start" ]
