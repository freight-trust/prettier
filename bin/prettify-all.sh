#!/bin/bash
set -e
<<<<<<< HEAD
script_dir=$(dirname "$0")
git ls-files | xargs -n 100 "$script_dir"/prettier.sh
=======
script_dir=$(dirname $0)
git ls-files | xargs -n 100 $script_dir/prettier.sh
>>>>>>> feat/automated
yarn jest -u
