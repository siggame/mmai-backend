#! /bin/bash

echo "Initializing all submodules..."
git submodule update --init --recursive

repos=("./mmai-api")

for repo in "${repos[@]}"
do
    repo_name=$(basename $repo)
    echo " -> Initializing $repo_name..."
    
    # Assuming main is the default branch...
    cd $repo
    git checkout main
    git pull
    cd ..
done

echo "Submodules initialized!"
echo "Now, skim the README of each one and ensure it's prepared for deployment."
echo "Afterwards, come back here and run the deploy script."