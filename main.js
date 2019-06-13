// load the http module
var http = require('http');

// configure our HTTP server
var server = http.createServer(function (request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.end("Welcome to FreddieMac Spinnaker POC by Pricing Devops Team\n This is a simple Node Js Application \n we'll be using a very basic example: a Hello World server written with Node.\n This is a Successful Response...Congrats\n");
});

// listen on localhost:8000
server.listen(8000);
console.log("Server listening at http://127.0.0.1:8000/");
