#!/usr/bin/env bash

set -e

all_versions=( \
  "11.8.0" "11.7.1" \
)
release_notes="release_notes.md"

# Sort the versions
IFS=$'\n' versions=($(sort -n <<< "${all_versions[*]}"))

# Check if the current branch is main
if [[ $(git branch --show-current) != "main" ]]; then
  echo "You must be on the main branch to release."
  exit 1
fi

# Check if the working directory is clean
if [[ $(git status --porcelain) ]]; then
  echo "You have uncommitted changes. Please commit or stash them before releasing."
  exit 1
fi

# Check if the current branch is up to date with origin
if [[ $(git rev-parse HEAD) != $(git rev-parse origin/main) ]]; then
  echo "Your branch is not up to date with origin/main. Please pull the latest changes."
  exit 1
fi

# Verify that version does not already exist
for version in "${versions[@]}"; do
  if git tag --list | grep -q "$version"; then
    echo "Version ${version} has already been released."
    exit 1
  fi
done

if [[ ! -e "${release_notes}" ]]; then
  echo "The release notes file ${release_notes} does not exist. Please create it before continuing."
  exit 1
fi

# Verify that the user wants to release
echo "You are about to release the following versions:"
echo "${versions[@]}" | tr ' ' ',' | sed 's/,/, /g'

read -r -p "Do you want to proceed? (y/N): " userInput
userInput=${userInput:-N}
userInputUpper=$(echo "${userInput}" | tr '[:lower:]' '[:upper:]')

if [[ "$userInputUpper" != "Y" ]]; then
    exit 1
fi

for version in "${versions[@]}"; do
  echo "Creating version ${version}"
  git tag "$version" --file="${release_notes}" --cleanup=strip
  git push origin "$version"
done

echo "Done"