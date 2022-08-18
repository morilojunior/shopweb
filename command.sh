#!/bin/sh

DIR="./node_modules/"
if [ -d "$DIR" ]
then
    if [ "$(ls -A $DIR)" ]; then
        echo "Take action $DIR is not Empty"
        yarn start
    else
        echo "$DIR is Empty"
        yarn install
        yarn start
    fi
else
    echo "Directory $DIR not found."
    yarn install
    yarn start
fi