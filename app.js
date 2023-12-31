const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  const ip = process.env.SERVER_IP || 'None';
  const pwd = process.env.SERVER_PWD || 'None';
  res.send(`ip : ${ip}, pwd: ${pwd.substring(0, 2)}`);
});

app.listen(port, () => {
  console.log(`App listening at port ${port}`);
});