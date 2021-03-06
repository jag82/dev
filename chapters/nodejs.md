#Node.js

Node allows us to run any arbitrary javascript program on our machine.
https://certsimple.com/blog/deploy-node-on-linux



##NPM

See `scripts/create-web-app.sh`.

`npm init` initializes a new npm project. Details about the project, its dependencies, and its entry points should be defined in the generated `package.json`.

`npm install --save <package-name>` installs packages from the [npm website](npmjs.org) and adds them to the `package.json`.

`npm version <patch|minor|major>` bumps the version number (patch = +0.0.1, minor = + 0.1.x, major = +1.x.x) and adds a git tag.

`npm publish` TODO how to publish to private repos?

`npm link` and `npm unlink`
many uses, one is to act as a `bin` install simulator
https://medium.com/netscape/a-guide-to-create-a-nodejs-command-line-package-c2166ad0452e

###Scripts
`npm run` lists all scripts defined in the `scripts` section of `package.json` (TODO explain the package json, include a sample in `/_dev`).

`npm run <script>` if run with an argument, it runs the script defined in `package.json`'s `script` section. Note that these can be `bash` commands or even a separate `bash` or `js` file. In these scripts, all locally installed dependencies (see `npm install`) are available in the `PATH`. So if you can call anything installed in this project (e.g. `faucet`) even if they're not globally available. If you call `env` in an npm script, it shows the many other conveniently available variables.

Note that every defined script will also have a `pre-` and `post-` hook. In short, if you defined a script called `lint`, then the following scripts would be run in order: `prelint`, `lint`, `postlint`

You can pass arguments to scripts via the following syntax. Everything after the first `--` will be passed directly to the underyling script.

*package.json*
```
{
	...
	"scripts": {
		"test": "mocha test"	//TODO: flesh out with real example
	}	
	...
}
```

```
npm run test -- --someflag -f 
//will run mocha test --someflag -f
```

The `package.json` can also contain a `config` section, allowing to declare variables for use in the `scripts` section or in other parts of the app (presumably).

```
{
  ...
  "config": {
    "reporter": "no-reporter"
  },
  "scripts": {
    "echo": "echo $npm_package_config_reporter"
  }
  ...
}
```





Sources:
https://www.keithcirkel.co.uk/how-to-use-npm-as-a-build-tool/

##Getting Started

All projects should begin the same:

1. `git clone` the project.

2. `npm run init` //all initialization (first time only)

3. `npm run start` //run the project in a visible way

4. Anything else should be contained in `README.md`.

##Running Programs

Node can execute any js file, independent of a browser.

`node <filename-with-or-without .js ending> <optional-arguments-separated-by-spaces>`

You can access arguments passed in this way via `process.argv`:

**index.js**
```
process.argv.forEach(function(arg) {
  console.log(arg);
});
```

`node index aCustomArg` prints:
  - <path>/node
  - <path>/index.js
  - aCustomArg


##Writing/Publishing Modules

`npm init`
`npm publish`

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

Another option is to use the npm package `now`. 
```
npm install -g now
now login   
# follow the prompts to create an account

now login
# your web app is now deployed at https://app-name-guid.now.sh

# optionally change the url to something memorable
now alias https://app-name-guid.now.sh custom-prefix.now.sh
```

