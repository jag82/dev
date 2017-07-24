#Getting Started

All projects should begin the same:

1. `git clone` the project.

2. `npm run init` //all initialization (first time only)

3. `npm run start` //run the project in a visible way

4. Anything else should be contained in `README.md`.


#Git Hooks

Git hooks can be triggered at various phases of the git lifecycle. Local hooks are run out of the `.git/hooks` directory. It is initially populated with `.sample` files.  This directory is not checked into the repo, preventing us from sharing these hooks.

To deal with this we place our hooks in `/githooks` and must simlink it with `.git/hooks`. This should be handled by `npm run init` to prevent forgetting or misconfigurations.