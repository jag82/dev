**ALWAYS INCLUDE A README!**  It is the entry point for understanding what's inside a folder and how it's intended to work.



#Developer Guide

This is a generic to commonly used tools. If you're visiting, pick a chapter that's interesting to you (e.g. `chapters/bash.md`) and try out the commands in it. **WARNING** as this is an incomplete guide, you will need to do some research on your own (as in all of life).

The layers that we operate on can be cleanly divided as follows:

- Servers
	- remote server
	- local servers
- Hardware
	- raspberry pi
	- personal computers
	- servers as a service
- Operating System
	- noobs/raspbian
	- ubuntu
	- other linux flavors
	- apt
	- bash
	- services/daemons
	- startup hooks
	- cronjobs
- Software
	- npm
	- git
	- node.js
	- sublime-text
	- web apps
	- useful libraries
- Network
	- gandi.net
	- routers (wifi/ethernet)


This README is a starting point for all documentation (TODO: restructure after first run). Since we're likely to run into problems related to following the directions in these files, consider the use of [a private version of StackOverflow](https://stackoverflow.com/channels) as a kind of FAQ with relevant answers. 

##Principles

- Examples should be taken from real life.
BAD:
```
```
GOOD:
```
```

- Blindly running code from this guide should not be destructive
BAD:
>
GOOD:
>

- Blindly running code should result in a path to correct usage
BAD:
```
```
GOOD:
```
```

- Do not overexplain.
BAD:
> 
GOOD:
>

##Chapters

See `/chapters`.

-Documentation (README.md, Markdown)

-Sublime Text

-Bash/APT

-Git/Github.com

-Node.js/NPM

-Raspberry Pi

-SSH

-Servers

##Scripts

We'll also build scripts to perform routine tasks such as creating web servers, installing regularly used software (Git, Node.js, SublimeText). They should be modular, verbose, robust, and easy to debug.


##Other Reading

http://corz.org/network/static.ip.address.php

http://misc.flogisoft.com/bash/tip_colors_and_formatting

##Next Steps

- check create-web-app script

- get router password + setup MAC->ip + port forwarding + ddns

- headless rpi

- remove sample web app from this repo

- rpi cron jobs (normal, web): ping! report/notify (see tap)

- turn on/off pi @ time-of-day

- backup pi, create extra noobs/raspbian SD cards


##TODO

- external server monitoring

- private git repo

- private npm repo

- CI servers

- password server

















