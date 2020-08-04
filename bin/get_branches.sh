#!/bin/bash
<<<<<<< HEAD
for remote in "$(git branch -r)"; do git branch --track "${remote#origin/}" "$remote"; done
=======
for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote; done
>>>>>>> feat/automated
git fetch --all
