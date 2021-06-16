#!/bin/sh

basketName='chia-basket-001'

#install google storage - gcsfuse
#https://github.com/GoogleCloudPlatform/gcsfuse/blob/master/docs/installing.md

export GCSFUSE_REPO=gcsfuse-`lsb_release -c -s`
echo "deb http://packages.cloud.google.com/apt $GCSFUSE_REPO main" | sudo tee /etc/apt/sources.list.d/gcsfuse.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

sudo apt-get update
sudo apt-get install gcsfuse


export GOOGLE_APPLICATION_CREDENTIALS="$(pwd)/gstorage-key.json"
#mount
mkdir "$(pwd)/../../storage"
gcsfuse $basketName $(pwd)/../../storage