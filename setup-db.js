const pool = require('./src/config/db');
const fs = require('fs');
const path = require('path');

const setupDb = async () => {
  const query = fs.readFileSync(path.join(__dirname, 'setup.sql')).toString();
  await pool.query(query);
  console.log('Database setup complete');
};

setupDb().catch(err => console.error('Error setting up database', err));
