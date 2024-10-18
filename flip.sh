#!/bin/bash

# Get the SHA-1 of the last two commits
commit1=$(git rev-parse HEAD)
commit2=$(git rev-parse HEAD~)

# Rebase the last two commits
git rebase $commit2 $commit1

# Check for conflicts
if [ $? -ne 0 ]; then
  echo "Conflicts occurred during rebase. Aborting."
  git rebase --abort
  exit 1
fi

exit 0
