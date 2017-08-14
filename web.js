//a bare-bones website example

const cmd = require('node-cmd');
const express = require('express');
const app = express();

app.get('/', function(req, res, next){
	res.send('Hello World from lenovo-ubuntu');
});

const PORT = 3000;
app.listen(PORT, function(){
	console.log('quick start app listening on port ' + PORT);
	cmd.get('ifconfig | grep Bcast', 
		function(err, data, stdErr){
            const start = data.indexOf('inet') + 10;
            const end =  data.indexOf('Bcast');
			console.log('internal ip = ' + data.substr(start, end-start));
	});
	cmd.get('curl ipinfo.io/ip', function(err, data, stdErr){
		console.log('external ip = ' + data);
	});
});
