#! /bin/bash

echo "Initializing all submodules..."
git submodule update --init --recursive

repos=("./mmai-api" "./mmai-db")

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

echo "Creating docker network..."
network_name="mmai-docker-network"
docker network create $network_name

echo "Deploying database container..."
cd ./mmai-db
docker-compose -d up
cd ..

echo "Deploying API container..."
cd ./mmai-api
./startDocker.sh
cd ..

echo "Successfully deployed!"