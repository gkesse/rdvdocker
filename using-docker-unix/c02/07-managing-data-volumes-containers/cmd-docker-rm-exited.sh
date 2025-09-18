#!/bin/bash

# supprime tous les dockers éteints
docker rm -v $(docker ps -aq -f status=exited)
