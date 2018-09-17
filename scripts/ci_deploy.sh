#!/bin/bash

echo 'Build successful! Deploying to Docker repository'
docker login $DOCKER_REPOSITORY_DOMAIN  --username $CI_USER --password $CI_PASSWORD
docker tag $IMAGE_NAME:$IMAGE_TAG $DOCKER_REPOSITORY_DOMAIN/$CI_USER/$IMAGE_NAME:$IMAGE_TAG
docker push $DOCKER_REPOSITORY_DOMAIN/$CI_USER/$IMAGE_NAME:$IMAGE_TAG