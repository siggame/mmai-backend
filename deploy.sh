echo "Deploying database container..."
cd ./mmai-db
docker-compose -d up
cd ..

echo "Deploying API container..."
cd ./mmai-api
./startDocker.sh
cd ..

echo "Successfully deployed!"