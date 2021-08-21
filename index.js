var http = require("http");

http.createServer(function (request, response) {
   // Send the HTTP header 
   // HTTP Status: 200 : OK
   // Content Type: text/plain
   response.writeHead(500, {'Content-Type': 'text/plain'});
   
   // Send the response body as "Hello World"
//   response.end('Hello World\n');
   

        const fs = require("fs");
         
        // fetch file details
        file=fs.stat("test1.txt", (err, stats) => {
          if (err) {
            throw err;
          }
         
          // print file last modified date
          response.end(`test_folder latest change [test1.txt] at time: [ ${stats.mtime}]`);
        //  console.log(`File Status Last Modified: ${stats.ctime}`);
        });



}).listen(8081);

// Console will print the message
console.log('Server running at http://127.0.0.1:8081/');
