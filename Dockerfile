# Use Node.js as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy application dependencies
COPY package.json ./

# Install dependencies
RUN npm install

# Copy application source code to the container
COPY src ./src
COPY bin ./bin

# Expose the port the app listens on
EXPOSE 3000

# Add environment variables (SECRET_WORD). We can also pass the secret during runtime
ENV SECRET_WORD="my-secret-word-duggu"

# Set the default command to run the app
CMD ["npm", "start"]
