var connect = require('connect');
// import middlewares
var helloWorld = require('./hello_world');
var app = connect();
app.use(helloWorld);
app.listen(3000);