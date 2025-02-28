FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Build the project
RUN npm run build

# Expose ports
EXPOSE 3000
EXPOSE 3001

# Start the application
CMD ["npm", "run", "dev"] 