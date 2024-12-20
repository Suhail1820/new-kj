# Step 1: Use an official Node.js runtime as a base image
FROM node:18

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json files
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code into the container
COPY . .

# Step 6: Expose the port the app will run on (useful for deployments)
EXPOSE 3000

# Step 7: Command to run the application
CMD ["node", "app.js"]
