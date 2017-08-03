#Raspberry Pi

Raspberry Pis are cheap machines that run a variant of linux and can be used as servers. Our goal will be to create reproducible servers that can be hosted locally by a client, or by our team. We will always use the Raspbian OS (from and SD card) for consistency. We can interact with the Pi by pluggin in peripherals (monitor, mouse, keyboard) for the initial setup and as a fallback, but generally speaking, we should SSH into it.


##Initial Setup

Connect a power supply, monitor, keyboard, mouse, wifi.

Install Raspbian via NOOBS on an SD card. (TODO link, file)

TODO Setup the machine by pulling from various git repos, changing the configs to autostart/run programs/whatever.

The default username and password are `pi` and `raspberry`. Change them!

The default hostname is `raspberrypi`, allowing us to access the machine (e.g. by SSH) at `raspberrypi.local`.

The command line tool `raspi-config` has many useful options (e.g. enabling SSH access, setting the hostname, auto login). To directly edit the file, find it via `sudo find / -name 'raspi-config'`.

##SSH Access

Enable SSH access via `raspi-config`, then add public SSH keys of machines that should have access to `~/.ssh/authorized_keys`. [See the SSH chapter for more details.](./chapters/ssh.md)


##Hostname

You will want to access the machine by a unique name (e.g. ci-server.local) instead of an IP (e.g. 192.168.178.32). To do so, run `sudo raspi-config` and edit the hostname.


##Execute Code on Startup/Boot

Edit `/etc/rc.local` to add scripts that should run on boot/startup. For example: `su pi -c 'node /home/pi/server.js < /dev/null &'`. Note that `printf` can be [tracked down.](https://askubuntu.com/questions/575913/what-does-printf-do-in-rc-local)


##Installing Node.js and NPM

To run javascript scripts, we'll need to install *node.js* and *npm*.
```
	apt update
	apt upgrade
	apt install nodejs
	apt install npm
```
or
```
	wget http://node-arm.herokuapp.com/node_latest_armhf.deb 
	sudo dpkg -i node_latest_armhf.deb
```

##Static IP (internal only -- TODO perhaps it's better to set the hostname and scan for the suffix (e.g. .local, .fritz.box))

Edit `/etc/dhcpcd.conf` by adding the following lines. You'll need your router's IP address (TODO how to get from commandline)

**WARNING** note the 192.168.178.1 as the router's IP in the example below. It is used for both routers and domain_name_servers. The first 3 segments are also used in the chosen static ip_address.

*Ethernet*
```
interface eth0

static ip_address=192.168.178.10/24
static routers=192.168.178.1
static domain_name_servers=192.168.178.1
```

*WLAN*
```
interface wlan0

static ip_address=192.168.178.200/24
static routers=192.168.178.1
static domain_name_servers=192.168.178.1
```

Then `sudo reboot` and confirm the changes with `ifconfig`.


## Other Raspberry Pi Notes (TODO)

  How to use phantomjs for pi
	  https://www.bitpi.co/2015/02/11/compiling-phantomjs-on-raspberry-pi/
  
  How to schedule cronjobs
  	https://quaintproject.wordpress.com/2013/09/29/how-to-schedule-a-job-on-the-raspberry-pi/

  How to start the pi at a specific time


	How to skip login/password

		TODO when starting headless, we need to skip the login/pass screen
