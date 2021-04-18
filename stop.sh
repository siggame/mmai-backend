read -r -p "Are you sure you want to stop the MMAI backend containers? [Y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    docker kill mmai-api-container
    docker kill mmai-db-container
    
    echo "MMAI backend containers stopped."
fi
