echo "Deploying backend..."

# Bring the containers up in detached mode, running them in the background rather than connecting them to the terminal
docker-compose up --detach --build

echo "Successfully deployed!"
