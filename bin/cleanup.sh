#!/bin/bash
set -e

timestamp=$(date +"%Y-%m-%d")
git tag pre-prettier-$timestamp pre-prettier
git tag post-prettier-$timestamp post-prettier

echo "timestamping..."
git push origin pre-prettier-$timestamp post-prettier-$timestamp

sleep 1

git tag -d pre-prettier post-prettier
git push --delete origin pre-prettier post-prettier
git tag | grep prettier-backup | tee >(xargs git tag -d > /dev/null 2>&1) | xargs git push --delete origin

echo "cleanup complete"

exit 0
