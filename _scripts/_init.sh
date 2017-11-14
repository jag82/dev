#!/bin/bash

#remove the existing git hooks
rm -rf .git/hooks

#symlink our githooks dir, which is version controlled, to .git/hooks so they're run
ln -sf ../_githooks .git/hooks

#make sure we have permission to run our githooks
chmod +x _githooks/*