// Import the express library
const express = require('express');

// Initialize the express app
const app = express();

// Define a simple route that responds with "Hello, World!"
app.get('/', (req, res) => {
  res.send('Hello, World!');
});

// Make the app listen on port 3000
app.listen(3000, () => {
  console.log('Server is running on http://localhost:3000');
});

