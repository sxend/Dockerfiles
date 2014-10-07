#!/bin/bash
set -eu

USER=$1
BRANCH=$2

DIR=`echo $BRANCH | sed -e 's/\(.*\)\/\(.*\)/\1/'`

TAG=`echo $BRANCH | sed -e 's/\(.*\)\/\(.*\)/\2/'`

REPO_NAME=$USER/$DIR

cd $DIR

docker build -t $REPO_NAME .

IMAGE_ID=`docker history -q $REPO_NAME | sed -n -e '1,1p'`

docker tag $IMAGE_ID $REPO_NAME:$TAG

docker push $REPO_NAME:$TAG
