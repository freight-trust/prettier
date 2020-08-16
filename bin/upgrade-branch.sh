#!/bin/bash
set -e
script_dir=$PWD
branch=$(git symbolic-ref --short HEAD)
backup_tag=$branch-auto-prettier-backup
merge_base_commit=$(git merge-base master $branch)
author=$(git log --format="%aN <%aE>" --max-count=1)
git tag $backup_tag
git reset --hard $merge_base_commit
git merge --squash $backup_tag
git commit --no-verify --no-edit --author="$author"

echo "proceeding with git rebase..."
sleep 1

git rebase auto/pre-prettier || {
  echo "conflicts during rebase for branch $branch"
  git rebase --abort
  git checkout --detach
  git branch -f $branch $backup_tag
  git tag -d $backup_tag
  exit 1
}
squashed_commit=$(git rev-parse HEAD)
yarn install

echo "Git Squash and Reset HEAD"
sleep 1

git reset HEAD^
git diff --name-only | xargs yarn prettier --write 
git commit --all --no-verify --reuse-message=$squashed_commit
git rebase -X theirs post-prettier
