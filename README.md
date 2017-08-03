#Developer Guide

The layers that we operate on can be cleanly divided as follows:

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


This README is a starting point for all documentation (TODO: restructure after first run). Since we're likely to run into problems related to following the directions in these files, I propose the use of [a private version of StackOverflow](https://stackoverflow.com/channels) as a kind of FAQ with relevant answers.


##Chapters

See `/chapters`.

-Documentation (README.md, Markdown)

-Sublime Text

-Bash/APT

-Git/Github.com

-Node.js/NPM

-Raspberry Pi

-SSH


##Scripts

We'll also build scripts to perform routine tasks such as creating web servers, installing regularly used software (Git, Node.js, SublimeText). They should be modular, verbose, robust, and easy to debug.


##Other Reading

http://corz.org/network/static.ip.address.php

http://misc.flogisoft.com/bash/tip_colors_and_formatting

##Next Steps

- check if rc.local is really starting a node app in the background

- check create-web-app script

- get router password + setup MAC->ip + port forwarding + ddns

- headless rpi

- remove sample web app from this repo

- rpi cron jobs (normal, web): ping! report/notify (see tap)

- turn on/off pi @ time-of-day

- backup pi, create extra noobs/raspbian SD cards




















