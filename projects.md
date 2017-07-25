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








## Git Server

https://www.linux.com/learn/how-run-your-own-git-server

https://linuxprograms.wordpress.com/2010/05/10/how-to-set-up-a-git-repository-locally/

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