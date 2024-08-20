# Use the official Node.js 22.1.0 runtime as a parent image
FROM node:22.1.0

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Make port 3000 available to the outside world
EXPOSE 3000

# Run the application when the container launches
CMD ["npm", "run", "start"]