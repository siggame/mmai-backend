#! /bin/bash

if [ "$#" -ne 1 ]; then
  echo "Error - illegal number of parameters."
  echo "Script must be run as './connect.sh <container_name>'"
fi


echo "Connecting to container '$1' using sh..."
echo "Once connected, type 'exit' to disconnect."

docker exec -it $1 sh

echo "Successfully disconnected from container."