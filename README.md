#Getting Started

All projects should begin the same:

1. `git clone` the project.

2. `npm run init` //all initialization (first time only)

3. `npm run start` //run the project in a visible way

4. Anything else should be contained in `README.md`.



#Documentation

This README is a starting point for all documentation (TODO: restructure after first run). Since we're likely to run into problems related to following the directions in these files, I propose the use of [a private version of StackOverflow](https://stackoverflow.com/channels) as a kind of FAQ with relevant answers.




#Git Hooks

Git hooks can be triggered at various phases of the git lifecycle. Local hooks are run out of the `.git/hooks` directory. It is initially populated with `.sample` files.  This directory is not checked into the repo, preventing us from sharing these hooks.

To deal with this we place our hooks in `/githooks` and must simlink it with `.git/hooks`. This should be handled by `npm run init` to prevent forgetting or misconfigurations.








#Dev Stuff

In general, we want to use Linux. We will also support Mac (another UNIX-based system) as a secondary option. Windows and its horrid command line are prohibited. 

## Linux Builds

Debian -> Ubuntu, Mint
Puppy, Tails

## Advanced Packaging Tool (APT)

The advanced packaging tool (APT) is the best way to install software for Linux machines. We interact with this tool via the command line version of the program `apt`. You may come across others' work that uses the similar program `apt-get`. We prefer the former. [Why?](https://itsfoss.com/apt-vs-apt-get-difference/)

[Here's the list of apt commands.](https://manpages.debian.org/jessie/apt/apt.8.en.html)

## Homebrew

Install software for Mac via [homebrew](https://brew.sh/).

##Bash

###Customized Command Line
See `_dev/.bash_profile.sample`.

###Basic Commands

```
#show files in your current directory
ls
ls -a #shows hidden files

#navigate to another directory
cd .. #up one directory
cd tango #enter the /tango directory (if present)
cd ~ #return to your home directory (user-specific)
#TIP: use tab to autocomplete available directory names
#TIP: customize your command prompt to make it easier to understand

#symbol for your home directory
~

#output text to stdout (standard out, which can be printed to screen or used by other programs)
echo "This will get printed or passed to another program."
NAME="Jag"
echo "$NAME is cool."

#create file
touch your-file.js

#delete a file
rm your-file.js

#delete a directory (be careful!)
rm -rf your-directory

#move a file/directory TODO
mv source dest

#copy a file/directory TODO

#append to file
echo "something to append" >> your-file.js

#overwrite/create file
echo "something to write" > your-file.js

#piping TODO | ||

#grep TODO

#read a file TODO < <<

#time TODO

#cat TODO

#sed TODO

#cut TODO

#run multiple programs TODO & &&


```


###PATH variables

In order to call a program from bash, it needs to be declared in the PATH variable. To do so, open `~/.bash_profile` and add:

```
    export PATH="$PATH:/usr/local/sbin/"
```

If there's another line that starts with `PATH=`, make sure the above line comes **after** it. In the above example, we are saying:

- `export`: make this globally available
- `PATH=`: we define a variable named PATH (called by typing `$PATH`)
- `$PATH:/usr/local/sbin`: whatever path already is + a path to some other binaries we want to add

##Git

github.com

###Aliases
See `_dev/.gitconfig.sample`.

`.gitignore`

Merge/diff tools. KDiff3?

###Hooks

See `/_githooks`. It is synced to the automatically picked up files in `/.git/hooks`.




##NPM

`npm init`

`package.json`

npmjs.org

###Scripts



##SSH

See `_dev/ssh.config.sample`. Lives in `~/.ssh/config`.

Public keys, private keys. (what they are, how to generate them)

```
ssh-keygen -t rsa
```

##Markdown

`README.md`

`CHANGELOG.md`




##Sublime Text

Add `subl` to `PATH` for easy opening of folders/files in Sublime Text.

###Packages

Install package control from [here](https://packagecontrol.io/installation).

Various syntax highlighting packages as needed.

*SyncedSideBar*

*SideBarEnhancements*

*Markdown Preview* or *MarkdownLivePreview*

*SublimeLinter* + *SublimeLinter-contrib-eslint* + *ESLint-Formatter* (Use with `eslint_d`, which is faster than `eslint`. Consider `{ "format_on_save": true }`)

*HTML-CSS-JS Prettify*

Snippets?


##Code Formatting


###ESLint

~~`npm install -g eslint`~~
`npm install -g eslint_d`




#Node.js

Install node.js. We'll use to run web servers, write programs, etc.