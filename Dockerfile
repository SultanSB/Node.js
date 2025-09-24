# Use official Node.js runtime as base image
FROM node:20-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of application code
COPY . .

ENV PUBLIC_DIR=/app/public
ENV DATA_DIR=/app/data

# Expose port 8000
EXPOSE 8000

# Command to run the application
CMD ["node", "server.js"]