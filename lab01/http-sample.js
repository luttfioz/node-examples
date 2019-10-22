var http = require("http");
var server = http.createServer(function (request,
    response) {
    response.write("Hello Node.js !!");
    response.end();
});
server.listen(8080);
console.log('Server started');