#!/bin/bash -ev

echo 'Build successful!'
echo 'Deploying to Docker repository'
echo $REGISTRY_NAME
echo $IMAGE_TAG
docker login repo.treescale.com  --username $CI_USER --password-$CI_PASSWORD
