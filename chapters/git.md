##Git

github.com

###Git Commands
```
git diff

git add.
git commit -am "custom commit message"

git reset --hard

git stash
git stash apply
git stash pop
```

###Aliases
See `_dev/.gitconfig.sample`.

`.gitignore`

Merge/diff tools. KDiff3?


###Hooks

Git hooks can be triggered at various phases of the git lifecycle. Local hooks are run out of the `.git/hooks` directory. It is initially populated with `.sample` files.  This directory is not checked into the repo, preventing us from sharing these hooks.

To deal with this we place our hooks in `/githooks` and must symlink it with `.git/hooks`. This should be handled by `npm run init` to prevent forgetting or misconfigurations.


###Servers
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