var http = require('http');
var fs = require('fs');
var url = require('url');
var qs = require('querystring');

const inPort = 4000;            // 내부 포트 번호

var app = http.createServer(function(request, response) {
    fs.readFile('data.json', function(error, data) {
        if (error) {
            console.log(error);
        }
        else {
            response.writeHead(200, { 'Content-Type': 'text/json' });
            response.end(data);
        }
    })
});

app.listen(inPort, function() {       // 내부 포트 번호: 80, 외부 포트 번호는 웹브라우저의 주소창에 입력
  console.log("HRC node.js is running on port %d", inPort);
});
