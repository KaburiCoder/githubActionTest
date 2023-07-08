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

# Expose application port
EXPOSE ${port}

# Start the application
CMD npm run start