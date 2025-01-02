#!/usr/bin/env bash

set -e

all_versions=( \
  "11.8.0" \ # "11.7.1" "11.6.2" "11.5.2" "11.4.4" "11.3.2" "11.2.6" "11.1.6" "11.0.6" \
  "10.11.10" \ # "10.10.7" "10.9.8" "10.8.8" \
)
release_notes="release_notes.md"

# Sort the versions
IFS=$'\n' versions=($(sort -n <<< "${all_versions[*]}"))

# Check if the current branch is main
if [[ $(git branch --show-current) != "main" ]]; then
  echo "You must be on the main branch to create tags."
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

git fetch --prune --prune-tags > /dev/null

if [[ ! -e "${release_notes}" ]]; then
  echo "The release notes file ${release_notes} does not exist. Please create it before continuing."
  exit 1
fi

# Verify that the user wants to release
echo "You are about to create tags for the following versions:"
echo "${versions[@]}" | tr ' ' ',' | sed 's/,/, /g'

read -r -p "Do you want to proceed? (y/N): " userInput
userInput=${userInput:-N}
userInputUpper=$(echo "${userInput}" | tr '[:lower:]' '[:upper:]')

if [[ "$userInputUpper" != "Y" ]]; then
    exit 1
fi

for version in "${versions[@]}"; do
  if git tag --list | grep -q "$version"; then
    echo "Warning: Version ${version} has already been tagged. Skipping."
    continue
  fi

  echo "Creating tag ${version}"
  git tag "$version" --file="${release_notes}" --cleanup=strip
  git push origin "$version"
done

echo "Done"
