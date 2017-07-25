#Getting Started

All projects should begin the same:

1. `git clone` the project.

2. `npm run init` //all initialization (first time only)

3. `npm run start` //run the project in a visible way

4. Anything else should be contained in `README.md`.








#Git Hooks

Git hooks can be triggered at various phases of the git lifecycle. Local hooks are run out of the `.git/hooks` directory. It is initially populated with `.sample` files.  This directory is not checked into the repo, preventing us from sharing these hooks.

To deal with this we place our hooks in `/githooks` and must simlink it with `.git/hooks`. This should be handled by `npm run init` to prevent forgetting or misconfigurations.








#Dev Stuff



##Bash

###Customized Command Line
See `_dev/.bash_profile.sample`.

###Basic Commands
`cd`
`ls`
`rm`
`mv`
`cp`
`~`
`|`
`<<, <, >, >>`
`cat`

###Useful Commands
`grep`
`time`
`sed`
`cut`




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

`npm install -g eslint`
