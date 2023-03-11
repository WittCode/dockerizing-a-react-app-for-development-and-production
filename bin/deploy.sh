#!/bin/bash

if [[ $1 = "prod" || $1 = "dev" ]] && [[ $2 = "down" || $2 = "up" ]]; then
    cd ..
    fileEnv="docker-compose.${1}.yaml"
    downOrUp=$2
    echo "Running docker-compose -f docker-compose.yaml -f $fileEnv $downOrUp"
    docker-compose -f docker-compose.yaml -f $fileEnv $downOrUp
else
    echo 'Need to follow format ./deploy prod|dev down|up'
fi

# chmod u+x prod.sh
# need to use sudo