#Servers

Whatever server is set up, it's wise to SSH into it from your working computer.


##Remote Servers

A simple option for a remote machine is a Digital Ocean droplet. We currently use a $5/month plan.

[How to setup a nodejs web app on Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-node-js-application-for-production-on-ubuntu-16-04)

##Local Servers

We can use Pis (see `raspberry-pi.md`) or our local machines as servers.

To configure the accessibility of these servers (e.g. the internet, local networks), see `network.md`.


##Hosting

So far, I've used gandi.net. Here's a sample [Zonefile](https://en.wikipedia.org/wiki/Zone_file).

```
@ 10800 IN A 217.70.184.38
blog 10800 IN CNAME blogs.vip.gandi.net.
imap 10800 IN CNAME access.mail.gandi.net.
pop 10800 IN CNAME access.mail.gandi.net.
smtp 10800 IN CNAME relay.mail.gandi.net.
webmail 10800 IN CNAME webmail.gandi.net.
www 10800 IN CNAME webredir.vip.gandi.net.
@ 10800 IN MX 50 fb.mail.gandi.net.
@ 10800 IN MX 10 spool.mail.gandi.net.
@ 10800 IN TXT "v=spf1 include:_mailcust.gandi.net ?all"

```

Which defines the following urls:

 - TODO:
 - TODO:
 