#Node.js

Node allows us to run any arbitrary javascript program on our machine.




##NPM

`npm init`

`package.json`

npmjs.org

###Scripts

TODO




##Getting Started

All projects should begin the same:

1. `git clone` the project.

2. `npm run init` //all initialization (first time only)

3. `npm run start` //run the project in a visible way

4. Anything else should be contained in `README.md`.




##Web App

1. Install NPM and Node.js

2. Create an npm project and install Express, a web server library.
```
npm init

npm install --save express

touch index.js
```

3. Write your server code. Paste the following into `index.js` for a quick start.
```
const express = require('express');
const app = express();

app.get('/', function(req, res, next){
	res.render('Hello World');
});

const PORT = 3000;
app.listen(PORT, function(){
	console.log(`quick start app listening on port ${PORT}`);
});
```

4. Start the app.
```
node index.js
```

5. To access the app locally, visit `localhost:3000` on the same machine.

For more information, see the Node.js web application help (TODO).


6. To access the app from within the same WiFi network, get the internal IP and visit this address in the browser of another device connected to the same network.
```
ifconfig | grep inet | grep broadcast

#inet 192.168.178.38 netmask 0xffffff00 broadcast 192.168.178.255

#visit 192.168.178.38:3000
```
