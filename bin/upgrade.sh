#!/bin/bash
set -e
<<<<<<< HEAD
script_dir=$(dirname "$0")
=======
script_dir=$(dirname $0)
>>>>>>> feat/automated
git checkout master
git pull origin master
yarn add prettier@latest
version=$(yarn --silent prettier --version)
git commit --all --message="⬆️ upgrade prettier to version $version"
git tag pre-prettier
<<<<<<< HEAD
"$script_dir"/prettify-all.sh
=======
$script_dir/prettify-all.sh
>>>>>>> feat/automated
