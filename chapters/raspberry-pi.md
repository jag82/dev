#Raspberry Pi

Raspberry Pis are cheap machines that run a variant of linux and can be used as servers. Our goal will be to create reproducible servers that can be hosted locally by a client, or by our team. We will always use the Raspbian OS (from and SD card) for consistency. We can interact with the Pi by pluggin in peripherals (monitor, mouse, keyboard) for the initial setup and as a fallback, but generally speaking, we should SSH into it.


##Direct Setup

Connect a power supply, monitor, keyboard, mouse, wifi.

Install Raspbian, Ubuntu, or whatever on the machine via SD card.

Setup the machine by pulling from various git repos, changing the configs to autostart/run programs/whatever.



##SSH

TODO how to ssh into a Pi




#Internal name instead of IP

TODO how to give the Pi a name (e.g. ci-server.local) instead of an IP (e.g. 192.168.178.32).



#Static IP

TODO how to give the Pi a static IP (for external connections)




#How to skip login/password

TODO when starting headless, we need to skip the login/pass screen




#How to immediately run a program on startup

TODO how to run a program immediately after starting up the pi.


Raspberry Pi Notes

  Noobs -> Raspbian
	(TODO where to get it, maybe a copy of the iso)

	pi:raspberry@raspberrypi.local

	Important files:

		raspi-config	command for editing config (e.g. for ssh access, autologin, hostname)
				you could also edit the file yourself: 
					https://raspberrypi.stackexchange.com/questions/1322/where-is-the-script-for-raspi-config-stored-in-the-fs-on-raspbian
					sudo find / -name 'raspi-config'

		/etc/rc.local	for scripts to run on boot

  SSH Access
	https://www.raspberrypi.org/documentation/remote-access/ssh/

  Run a script @ boot
	You can define things to run on boot in /etc/rc.local
	In that shell script, you don't have the same path as when you log in
  	su pi -c 'node /home/pi/server.js < /dev/null &'

  Setup Node.js
	apt install nodejs
	  vs.
	wget http://node-arm.herokuapp.com/node_latest_armhf.deb 
	sudo dpkg -i node_latest_armhf.deb

	  http://weworkweplay.com/play/raspberry-pi-nodejs/

  How to use phantomjs for pi
	  https://www.bitpi.co/2015/02/11/compiling-phantomjs-on-raspberry-pi/
  
  How to schedule cronjobs
  	https://quaintproject.wordpress.com/2013/09/29/how-to-schedule-a-job-on-the-raspberry-pi/

  How to start the pi at a specific time

