const express = require('express');
const app = express();
const todoRoutes = require('./routes');
require('dotenv').config();

app.use(express.json());
app.use(todoRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
