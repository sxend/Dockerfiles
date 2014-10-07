#!/bin/bash
set -eu

USER=$1
DIR=$2
TAG=$3

REPO_NAME=$USER/$DIR

cd $DIR

docker build -t $REPO_NAME .

IMAGE_ID=`docker history -q $REPO_NAME | sed -n -e '1,1p'`

docker tag $IMAGE_ID $REPO_NAME:$TAG

docker push $REPO_NAME:$TAG
