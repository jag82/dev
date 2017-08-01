# Projects

Servers can be Pis, arbitrary linux machines. It should be possible to SSH into them and to connect directly with peripherals.








## Direct Setup

Connect a power supply, monitor, keyboard, mouse, wifi.

Install Raspbian, Ubuntu, or whatever on the machine via SD card.

Setup the machine by pulling from various git repos, changing the configs to autostart/run programs/whatever.








## SSH Setup

Create a directory to store all SSH keys.
```
`mkdir ~/.ssh/authorized_keys`
```

Copy all needed (public) keys there.

Connect from another machine via SSH.
```
ssh <server>
```








## Node.js Web App

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

## Git Server

https://www.linux.com/learn/how-run-your-own-git-server

https://linuxprograms.wordpress.com/2010/05/10/how-to-set-up-a-git-repository-locally/


1) Create a new user

*Linux*

//TODO:
`sudo adduser git`

*Mac*
```
USERNAME=git
PASSWORD=password

dscl . -create /Users/$USERNAME
dscl . -create /Users/$USERNAME UserShell /bin/bash
dscl . -create /Users/$USERNAME RealName "$USERNAME"
dscl . -create /Users/$USERNAME UniqueID 8005
dscl . -create /Users/$USERNAME PrimaryGroupID 20
dscl . -create /Users/$USERNAME NFSHomeDirectory /Users/$USERNAME
dscl . -passwd /Users/$USERNAME $PASSWORD
```

Install git.
```
sudo apt-get install git-core
```

Add a user.
```
sudo useradd git
passwd git
```

Create local keys and place them on the remote server in the correct dir.

```
cat ~/.ssh/id_rsa.pub | ssh git@remote-server "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
```