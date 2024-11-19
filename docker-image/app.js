const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Endpoint: GET /
app.get('/', (req, res) => {
  res.json({ message: 'Hello, World!' });
});

// Start server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
