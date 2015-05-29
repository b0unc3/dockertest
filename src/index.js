var express = require('express');

// Constants
var PORT = 8181;

// App
var app = express();
app.get('/', function (req, res) {
  res.send('Hello world modificato 2!\n')
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
