#!/usr/bin/env bash

docker build --tag jwt-api-test .

docker stop $(docker ps -a -q)

docker run -p 8080:8080 --env-file=env_file jwt-api-test 
