# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose port 3000 (the port the application uses)
EXPOSE 3000

# Run the application
CMD [ "node", "index.js" ]
