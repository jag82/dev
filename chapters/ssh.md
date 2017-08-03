##SSH

SSH keys are a strong replacement for passwords. They can be used to grant access to a remote machine (e.g. github, a raspberry pi) without having to manually enter a password. This is useful for writing scripts for automation that are secure but do not contain sensitive passwords! They exist as a public/private key pair, each stored in a file (typically in the `.ssh` folder). When giving your key to a remote system, it is **always** your public key (e.g. `id_rsa.pub`), **never** your private key.


###Checking for existing keys
```
ls -al ~/.ssh
```


###Creating a new key

1. Generate a new key.
```
ssh-keygen -t rsa -b 4096 -C "<your_email@example.com>"
```

2. Start the *ssh-agent*
```
eval "$(ssh-agent -s)"
```

3. Add your newly created key to the *ssh-agent*.
```
ssh-add ~/.ssh/id_rsa
```


###Adding the key to remote machines

Send the contents of an existing public ssh key to github or paste it into the `~/.ssh/authorized_key` of a remote machine.

```
#Create an `.ssh` directory if needed
cd ~
install -d -m 700 ~/.ssh

#Copy ssh key to remote machine
cat ~/.ssh/id_rsa.pub | ssh <user>@<remote-machine> 'cat >> .ssh/authorized_keys'
```
[Source](https://www.raspberrypi.org/documentation/remote-access/ssh/passwordless.md)

Access the remote machine:

```
ssh <user>@<remote-machine>
```

