#!/bin/bash
set -e
script_dir=$(dirname "$0")
GIT_COMMITTER_NAME="auto-prettier" GIT_COMMITTER_EMAIL="auto-prettierr@freighttrust.com" \
  git commit --author="auto-prettier <auto-prettier@freighttrust.com>" \
             --all --message="chore: automated prettier" --no-verify
git tag auto/post-prettier
git push origin auto/pre-prettier auto/post-prettier master
"$script_dir"/get-branches.sh | xargs -n 100 "$script_dir"/upgrade-branches.sh
