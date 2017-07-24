#!/bin/bash

#remove the existing git hooks
rm -rf .git/hooks

#simlink our githooks dir, which is version controlled, to .git/hooks so they're run
ln -sf githooks .git/hooks

#make sure we have permission to run our githooks
chmod +x /githooks/*