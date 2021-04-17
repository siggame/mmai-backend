echo "Deploying database container..."
cd ./mmai-db
docker-compose up -d
cd ..

echo "Deploying API container..."
cd ./mmai-api
./startDocker.sh
cd ..

echo "Successfully deployed!"
