##Testing

It's important to write tests to make sure everything works and also as documentation. I suggest writing tests before writing code in order to design what you will be writing and to ensure that all tests actually fail (negative control).

We will use TAP (test anything protocol). It is a standardized format for outputting test results that has been around a long time. The main benefit of a known format is that we can chain many tools from different authors together.

For example:
```
	node tests/*.js | faucet | tap-notify
```


###Quick Start

1. install `tape`
```
   npm i --save tape 
```

2. add test script to `package.json`
```
    ...
    "test": "tape tests/**/*.js || true"
    ...
```

3. add tests folder and sample tests
```
    mkdir tests
    cd tests
    touch tests.js
```

*tests.js*
```
var test = require('tape');

test('positive control', function(t){
    t.equal(1,1);
    t.end();
});
```

TODO specific test runners (`tape` for running in browser), reporters, notifiers


###Continuous Integration

[Example of a Node.js app using Jenkins served at Digital Ocean](https://codeforgeek.com/2016/04/continuous-integration-deployment-jenkins-node-js/)

To set up Jenkins @ DigitalOcean:

```
# connect to our Digital Ocean server
ssh username@droplet_ip   #e.g. root@165.227.130.240

# install Java (required for Jenkins)
sudo apt-get update

sudo apt-get install default-jre
sudo apt-get install default-jdk


# install Jenkins (one step at a time)
sudo wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update

sudo apt-get install jenkins
```

After installation, Jenkins will automatically start itself and you can visit the domain-name:8080 to access it. If this url is not accessible, try restarting Jenkins via: `service jenkins restart`.



You may be required to enter the initial admin password. It can be quickly retrieved from the server:

```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
