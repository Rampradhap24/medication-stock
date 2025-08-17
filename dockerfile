# Use Node.js LTS version
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json & package-lock.json first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose the port your server runs on
EXPOSE 5500

# Start the application
CMD ["node", "server.js"]
