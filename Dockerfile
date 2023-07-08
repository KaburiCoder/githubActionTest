# Select base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy your application files
COPY . .

ARG SERVER_IP
ARG SERVER_PWD
RUN echo "SERVER_IP=${SERVER_IP}" > .env
RUN echo "SERVER_PWD=${SERVER_PWD}" >> .env

# Expose application port
EXPOSE ${port}

# Start the application
CMD npm run start