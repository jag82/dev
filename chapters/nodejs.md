#Node.js

Node allows us to run any arbitrary javascript program on our machine.
https://certsimple.com/blog/deploy-node-on-linux



##NPM

See `scripts/create-web-app.sh`.

`npm init` initializes a new npm project. Details about the project, its dependencies, and its entry points should be defined in the generated `package.json`.

`npm install --save <package-name>` installs packages from the [npm website](npmjs.org) and adds them to the `package.json`.




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

6. To access the app from the local network, [get the internal IP](./network.md) or hostname and visit `<internal-ip-or-hostname>:3000`.


7. To access the app from the internet, we'll need to [setup a static address]('./network.md').